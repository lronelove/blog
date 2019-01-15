<template>
  <div>
    <the-header></the-header>
    <slot></slot>
    <the-footer></the-footer>
  </div>
</template>

<script>
import TheHeader from '@/components/TheHeader.vue'
import TheFooter from '@/components/TheFooter.vue'

export default {
  name: 'Default',
  components: {
    TheHeader,
    TheFooter
  }
}
</script>
