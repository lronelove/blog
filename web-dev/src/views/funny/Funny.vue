<template>
  <default>
    <div class="main-wrap">
        <div class="main container">

            <!-- 左侧导航部分 -->
            <div class="left">
                <el-collapse v-model="activeNames" @change="handleChange">
                    <el-collapse-item v-for="(item, index) in navList" :name="item.name" :key="index">
                        <div slot="title" class="left-year">{{item.title}}</div>
                        <ul class="left-item">
                            <li 
                                v-for="(innerItem, j) in item.games" 
                                :key="j"
                            >
                                <router-link :to="{ path: innerItem.path }">{{innerItem.name}}</router-link>
                            </li>
                        </ul>  
                    </el-collapse-item>
                </el-collapse>
            </div>

            <!-- 右侧内容展示部分 -->
            <div class="right">
                <router-view></router-view>
            </div>
        </div>      
    </div>  
    
  </default>
</template>

<script>
import Default from '@/layout/Default.vue'

export default {
  name: 'articleList',
  components: {
    Default
  },
  data () {
      return {
          activeNames: [], // 左侧导航展开的栏目名字
          navList: [ // 导航列表数据
              {
                  name: 'game', // 年
                  title: '旧忆似梦，往事如烟', // 当年描述
                  games: [ // 当年文章列表
                    {
                        name: 'bubble', // bubble
                        path: '/funny/bubble'
                    },
                    {
                        name: 'snake', // snake
                        path: '/funny/snake'
                    }
                  ]
              }
          ]
      }
  },
  methods: {
      handleChange(val) {
        console.log(val);
      }
  }
}
</script>

<style lang="scss" scope>
@import '@/assets/css/common/variable.scss';

/* 右边内容展示区域部分 */
.right-item {
    height: 120px;
    background: $gray-bg;
    border-radius: $border-radius-default;
    overflow: hidden;
    margin-bottom: $margin-middle;

    a {
        display: flex;
        justify-content: space-between;
        color: $black-font;

        img {
            width: 36%;
            height: 120px;
            border-radius: $border-radius-default;
        }

        .article-detail {
            width: 64%;
            padding: $padding-middle;

            p {
                text-align: left;
                font-size: $font-size-article;
            }

            h3 {
                text-align: center;
                height: 40px;
                line-height: 40px;
                font-weight: normal;
                font-size: $font-size-title;
            }
        }        
    }
}

.right {
    position: relative;
    width: 70%;
    background: white;
    border-radius: $border-radius-default;
    padding: $padding-big;
    min-height: 480px;
    padding-bottom: $padding-big - $margin-middle;
}
/* 右边内容展示区域部分 */

/* 左边导航 */
.el-collapse-item__content {
    padding-bottom: 0;
} 

.left-item {
    border-top: 1px solid $gray-border;

    li {

        a {
            display: block;
            height: 100%;
            text-align: center;
            color: $blue-font;
            background: white;

            &:hover {
                color: white;
                background: $blue-bg;
            }
        }
    }
}

.left-year {
    width: 100%;
    color: $blue-font;
}

.left {
    width: 26%;
    border-radius: $border-radius-default;
}
/*左边导航*/

/* 主要区域 */
.main-wrap {
    padding: 42px;
    background: $gray-bg;
    min-height: 580px;
}

.main {
    display: flex;
    justify-content: space-between;
}
/* 主要区域 */

</style>
