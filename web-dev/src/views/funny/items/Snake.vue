<template>
  <div>
      <div id="buttons">
          <el-button type="success" @click="changeDirection('top')">top</el-button>
          <el-button type="success" @click="changeDirection('bottom')">bottom</el-button>
          <el-button type="success" @click="changeDirection('left')">left</el-button>
          <el-button type="success" @click="changeDirection('right')">right</el-button>
      </div>
      <div id="snake" ref="snake">
  </div>
  </div>
</template>

<script>
const Matrix = require('matrix-lronelove')

class Node {
    constructor (row, col, value) {
        this.row = row
        this.col = col
        this.value = value
        this.next = null
        this.prev = null
    }
}

class Snake {
    constructor () {
        this.head = null
        this.tail = null
        this.length = 0
        this.direction = [1, 0] // 初始向下
        this.directionMap = {
            'top': [-1, 0],
            'bottom': [1, 0],
            'left': [0, -1],
            'right': [0, 1]
        }
    }

    grow (row, col, value) { // 添加节点
        let node = new Node(row, col, value)
        this.length ++

        if (!this.head) {
            this.head = node
            this.tail = node
        } else {
            node.prev = this.tail
            this.tail.next = node
            this.tail = node
        }
    }

    move (matrix) { // 移动
        let currentNode = this.tail
        let prevNode = this.tail.prev

        while (prevNode) {
            currentNode.row = prevNode.row
            currentNode.col = prevNode.col
            currentNode = prevNode
            prevNode = prevNode.prev
        }
        this.head.row += this.direction[0]
        this.head.col += this.direction[1]

        if (this.head.row > 20) { // 破墙的时候
            this.head.row = 1
        }

        if (this.head.col > 20) { // 破墙的时候
            this.head.col = 1
        }
    }

    changeDirection (direction) { // 改变方向
        this.direction = this.directionMap[direction]
    }
}

export default {
  name: 'snake',
  data () {
      return {
          config: {
              row: 20, // 格子行数
              col: 20, // 格子列数
              direction: 'bottom', // 方向
              time: 1500
          },
          matrix: {}, // 控制格子显示的数据
          snake: null, // 蛇
      }
  },
  methods: {
      // 改变方向
      changeDirection (direction) {
          this.snake.changeDirection(direction)
      },
      // 根据matrix来渲染样式
      renderByMatrix () {
          let data = this.matrix.data
          let html = ``

          data.forEach((item, index) => {
              html += `<div class="row">`

              item.forEach((innerItem, j) => {
                  html += `<div class="block ${'block' + innerItem}"></div>`
              })
              html += `</div>` 
          })
          this.$refs.snake.innerHTML = html
      },
      // 根据配置，初始化格子样式
      createContainer () {
          this.matrix = new Matrix(this.config.row, this.config.col) // 初始化矩阵数据
          this.renderByMatrix() // 根据matrix来渲染样式
      },
      // 切换tab
      handleChange(val) {
        console.log(val);
      },
      // 初始化蛇 必须注意蛇添加的顺序
      createSnake () {
          this.snake = new Snake()
          this.snake.grow(4, 2, 2)
          this.snake.grow(3, 2, 1)
          this.snake.grow(2, 2, 1)

          this.setMatrixBySnake() // 根据蛇里面的数据，改变matrix里面的数据
      },
      // 初始化函数
      init () {
          this.createContainer() // 根据配置，初始化格子样式
          this.createSnake() // 创建蛇

          setInterval(() => {
              this.move()
          }, this.config.time)
      },
      // 让蛇移动
      move () {
          let row = this.snake.tail.row
          let col = this.snake.tail.col

          this.matrix.set(row, col, 0) // 最后一个节点重置为0
          this.snake.move(this.matrix) // 蛇移动
          this.setMatrixBySnake() // 渲染蛇
      },
      // 根据蛇里面的数据，改变matrix里面的数据
      setMatrixBySnake () {
          let current = this.snake.head

          while (current) {
            this.matrix.set(current.row, current.col, current.value)
            current = current.next
          }
          this.renderByMatrix() // 重新根据矩阵渲染页面
      }
  },
  mounted () {
      this.init()
  } 
}
</script>

<style lang="scss" scope>
@import '@/assets/css/common/variable.scss';

#snake-wrap {
    display: flex;
    position: relative;
}

#snake {
    position: relative;
}

.row {
    margin: 0 auto 0;
    display: flex;
    height: 20px;
    width: 400px;
    border-left: 1px solid $black-border;
}

.row:first-child {
    .block {
        border-top: 1px solid $black-border;
    }
}

.block {
    width: 20px;
    height: 20px;
    border-right: 1px solid $black-border;
    border-bottom: 1px solid $black-border;
}

.block0 {
    background: white;
}

.block1 {
    background: red;
}

.block2 {
    background: green;
}

#buttons {
    padding-bottom: $padding-middle;

    div {
        width: 80px;
        height: 36px;
    }
}
</style>
