<template>
  <default>
    <div class="doc-wrap">
        <div class="doc container">
            <h1 class="title">蒲公英</h1>
            <p class="author">lronelove</p>
            <article class="content">
                流年似水年华，四处漂流，何处是家?
            </article>
        </div>
    </div>
  </default>
</template>

<script>
import Default from '@/layout/Default.vue'

export default {
  name: 'articleDetail',
  components: {
    Default
  },
  data () {
      return {

      }
  },
  methods: {
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
