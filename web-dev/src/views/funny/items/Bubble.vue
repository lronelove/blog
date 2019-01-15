<template>
  <div>
      <h1>this is bubble</h1>
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
