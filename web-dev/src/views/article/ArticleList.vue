<template>
  <default>
    <div class="main-wrap">
        <div class="main container">

            <!-- 左侧导航部分 -->
            <div class="left">
                <el-collapse v-model="activeNames" @change="handleChange">
                    <el-collapse-item v-for="(item, index) in navList" :name="item.year" :key="index">
                        <div slot="title" class="left-year">{{item.yearDesc}}</div>
                        <ul class="left-item">
                            <li 
                                v-for="(innerItem, j) in item.articles" 
                                :key="j"
                            >
                                <a href="#">{{innerItem.name}}</a>
                            </li>
                        </ul>  
                    </el-collapse-item>
                </el-collapse>
            </div>

            <!-- 右侧内容展示部分 -->
            <div class="right">
                <ul class="right-content">
                    <li class="right-item" v-for="(item, index) in articlesList" :key="index">
                        <a href="#">
                            <img :src="item.image" alt="">
                            <div class="article-detail">
                                <h3>{{item.title}}</h3>
                                <p>{{item.content}}</p>
                            </div>
                        </a>
                    </li>
                </ul>
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
                  year: '2018', // 年
                  yearDesc: '流年碎忆，2018', // 当年描述
                  articles: [ // 当年文章列表
                    {
                        name: '萤火虫',
                        id: 1
                    },
                    {
                        name: '牛肉面',
                        id: 2
                    },
                  ]
              },
              {
                  year: '2019', // 年
                  yearDesc: '平淡是真，2019', // 当年描述
                  articles: [ // 当年文章列表
                    {
                        name: '萤火虫',
                        id: 3
                    },
                    {
                        name: '牛肉面',
                        id: 4
                    },
                  ]
              }
          ],
          articlesList: [ // 文章列表数据
            {
                image: require('@/assets/img/logo.jpeg'),
                title: '蒲公英',
                content: '文章描述',
                id: 1
            },
            {
                image: require('@/assets/img/logo.jpeg'),
                title: '蒲公英',
                content: '文章描述',
                id: 2
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
    width: 70%;
    background: white;
    border-radius: $border-radius-default;
    padding: $padding-big;
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
