<template>
  <default>
    <div class="doc-wrap">
        <div class="doc container">
            <h1 class="title">{{article.title}}</h1>
            <p class="author">{{article.author}}</p>
            <article class="content">
                {{article.content}}
            </article>
        </div>
    </div>
  </default>
</template>

<script>
import Default from '@/layout/Default.vue'
import api from '@/service/index.js'

export default {
  name: 'articleDetail',
  components: {
    Default
  },
  data () {
      return {
          article: {
              title: '',
              author: 'lronelove',
              content: '',
              id: -1
          }
      }
  },
  methods: {
    // 初始化函数
    init () {
        this.getArticleDetail()
    },

    // 获取文章详情
    getArticleDetail () {
        const id = this.$route.query.id

        api.article.getArticleDetail(id).then(res => {
            if (res.data.code === 0) {
                let data = res.data.data
                this.handleArticleData(data)
            } else {
                this.$message({
                    'type': 'success',
                    message: res.data.msg || '文章已不存在～'
                })
            }
        })
    },

    // 处理文章详情数据
    handleArticleData (data) {
         this.article = data
    },
  },
  created () {
    this.init()
  }
}
</script>

<style lang="scss" scope>
@import '@/assets/css/common/variable.scss';

/* 主要区域 */
.doc-wrap {
    padding: 42px;
    background: $gray-bg;
    min-height: 580px;
}

.doc {
    background: white;
}

.author {
    text-align: right;
    padding-right: $padding-middle;
    font-style: italic;
}

.content {
    text-align-last: left;
    font-size: $font-size-article;
    text-indent: 2 * $font-size-article;
    padding-top: $padding-middle;
    padding-bottom: $padding-middle;
}
/* 主要区域 */

</style>
