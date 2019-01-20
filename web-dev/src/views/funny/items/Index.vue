<template>
  <div>
      <h1>人生如戏</h1>
      <p>人生就像一场戏，你一认真，你就输了。</p>
  </div>
</template>

<script>

export default {
  name: 'bubble',
  data () {
      return {
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

</style>
