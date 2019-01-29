<template>
  <default>
    <div class="banner">
        <img src="@/assets/img/sky.jpg" alt="">
    </div>
  </default>
</template>

<script>
import Default from '@/layout/Default.vue'

export default {
  name: 'home',
  components: {
    Default
  },
  data () {
    return {
      content: 'android 标题'
    }
  }
}
</script>

<style lang="scss" scope>
/*! banner*/
.banner {
  img {
    width: 100%;
  }
}
</style>
