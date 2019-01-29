<template>
  <div id="container" ref="container" @mousemove.stop="handleMousemove">
        <div id="start" ref="start" class="start" @click="handleClick">start</div>
        <div>
          <audio class="audio" ref="audio" src="http://119.27.161.241/mp3/2017/11/AniFace1.mp3"></audio>
        </div>
  </div>
</template>

<script>

export default {
  name: 'bubble',
  data () {
      return {
        pos: { // 鼠标的位置信息
          x: 0,
          y: 0
        },
        config: { // 基本配置信息
          time: 2000
        },
        classNameBlackList: ['words', 'start', 'bubble'],
        bubbleShowFlag: true,
        allTheWords: [
          '风里飘雪的花',
      　　'在记忆之中发芽',
      　　'那些红色绿色',
      　　'我们的青春年华',
      　　'志向无限远大',
      　　'转眼已各奔天涯',
      　　'独自走在街上',
      　　'只看见曾经的晚霞',
      　　'时间似流水',
      　　'催促我们长大',
      　　'年轻的心有了白发',
      　　'当初的人呐',
      　　'你们如今在哪',
      　　'是否也在寻找梦的家',
      　　'风里飘雪的花',
      　　'在记忆之中发芽',
      　　'那些红色绿色',
      　　'我们的青春年华',
      　　'志向无限远大',
          '转眼已各奔天涯',
      　　'独自走在街上',
      　　'只看见曾经的晚霞',
      　　'时间似流水',
      　　'催促我们长大',
      　　'年轻的心有了白发',
      　　'当初的人呐',
      　　'你们如今在哪',
      　　'是否也在寻找梦的家',
      　　'时间似流水',
      　　'催促我们长大',
      　　'年轻的心有了白发',
      　　'当初的人呐',
      　　'你们如今在哪',
      　　'是否也在寻找梦的家'
        ]
      }
  },
  methods: {
      // 点击导航切换
      handleChange(val) {
        console.log(val);
      },

      // 生成随机的颜色
      randomColor () {
        let [a, b, c] = [Math.random()* 257, Math.random()* 257, Math.random()* 257]
        let color = `rgb(${a}, ${b}, ${c})`

        return color
      },

      // 产生气泡
      createBubble () {
        let div = document.createElement('div')
        div.className = 'bubble'
        div.style.left = (this.pos.x - 20) + 'px'
        div.style.top = (this.pos.y - 20) + 'px'
        div.style.background = this.randomColor()
        this.$refs.container.appendChild(div)

        setTimeout(() => {
            this.$refs.container.removeChild(div)
        }, this.config.time)
      },

      // 节流后的产生气泡的函数  
      saveFlowCreateBubble () {
        if (!this.bubbleShowFlag) {
          return false
        } else {
          this.createBubble() // 创建气泡
          this.bubbleShowFlag = false
          setTimeout(() => {
            this.bubbleShowFlag = true
          }, this.config.time / 20);
        }
      },

      // 鼠标移动创建气泡
      handleMousemove (e) {
        const target = e.target

        // 如果是移动在气泡或者开始按钮上面，直接返回
        if (this.classNameBlackList.indexOf(target.className) > -1) return false

        // 设置坐标，创建气泡
        this.pos.x = e.offsetX
        this.pos.y = e.offsetY
        this.saveFlowCreateBubble() // 创建气泡
      },

      // 添加文字结点
      appendWordsNodes (wordsArray, index) {
        for (let i = 0, len = wordsArray.length; i < len; i++) { // 添加结点
          setTimeout(() => {
            let div = document.createElement('div')
            div.className = 'words'
            div.innerHTML = wordsArray[i]
            div.style.background = this.randomColor()
            div.setAttribute('id', 'word' + i)
            this.$refs.container.appendChild(div)
          }, this.config.time * 2 * index)
        }
      },

      // 删除结点
      deleteWordsNodes (index) {
        setTimeout(() => {
          let wordsNodes = document.querySelectorAll('.words')

          for (let i = 0, len = wordsNodes.length; i < len; i++) {
              this.$refs.container.removeChild(wordsNodes[i])
          }
        }, this.config.time * 2 * (index + 1))
      },

      // 生成一串含有文字的气泡
      createWords (allTheWords) {
        let words = ''

        allTheWords.forEach((words, index) => {
            let wordsArray = words.trim().split('')
            this.appendWordsNodes(wordsArray, index) // 添加文字结点
            this.deleteWordsNodes(index) // 定时删除文字结点
        })

        return new Promise((resolve) => {
            setTimeout(() => {
                resolve('end')    
            }, this.config.time * 2 * allTheWords.length + 1)
        })
      },

      // 点击开始
      handleClick () {
        this.$refs.container.removeChild(this.$refs.start) // 移除开始按钮
        this.$refs.audio.play() // 播放音乐

        this.createWords(this.allTheWords).then(res => {
          if (res === 'end') {
              this.$message({
                message: '往事随风，爱恨随意',
                type: 'success'
              })
              this.$refs.audio.remove()
          }
        })
      }
  },
  mounted() {
    
  },
}
</script>

<style lang="scss" scope>
@import '@/assets/css/common/variable.scss';

#container {
    position: absolute;
    left: 0;
    right: 0;
    bottom: 0;
    z-index: 2;
    top: 0;
    width: 100%;
    padding-top: 200px;
    height: 100%;
    display: flex;
    justify-content: space-around;
    align-content: center;
}

.bubble {
    z-index: -1;
    width: 40px;
    height: 40px;
    border-radius:50%;
    opacity: 0;
    background: lightblue;
    position: absolute;
    animation: bubble 2s;
    -webkit-animation: bubble 2s;
    -webkit-border-radius:50%;
    -moz-border-radius:50%;
    -ms-border-radius:50%;
    -o-border-radius:50%;
}

@keyframes bubble {
    0% {
        width: 0;
        height: 0;
        opacity: 0;
    }
    50% {
        width: 40px;
        height: 40px;
        opacity: 1;
    }
    100% {
        width: 0;
        height: 0;
        opacity: 0;
    }
}

#start {
    width: 120px;
    height: 42px;
    text-align: center;
    line-height: 42px;
    background: green;
    color: white;
    position: absolute;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
    -webkit-transform: translate(-50%, -50%);
    -moz-transform: translate(-50%, -50%);
    -ms-transform: translate(-50%, -50%);
    -o-transform: translate(-50%, -50%);
    border-radius: 20px;
    -webkit-border-radius: 20px;
    -moz-border-radius: 20px;
    -ms-border-radius: 20px;
    -o-border-radius: 20px;
    cursor: pointer;
}

#start:hover {
    opacity: .7;
}

@keyframes wordBubble {
    0% {
        opacity: 0;
    }
    50% {
        opacity: 1;
    }
    100% {
        opacity: 0;
    }
}

.words {
    text-align: center;
    line-height: 60px;
    width: 60px;
    height: 60px;
    color: white;
    font-weight: bold;
    border-radius:50%;
    opacity: 0;
    background: lightblue;
    animation: wordBubble 4s;
    -webkit-animation: wordBubble 4s;
    -webkit-border-radius:50%;
    -moz-border-radius:50%;
    -ms-border-radius:50%;
    -o-border-radius:50%;
    align-items: stretch;
}

.audio {
  visibility: hidden;
}
</style>
