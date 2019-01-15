<template>
    <!-- 底部部分 -->
    <div class="footer-wrap">
        <div class="container footer">
            <p>let life be beautiful like summer flowers and death like auttom leaves.</p>
        </div>
    </div>
</template>

<script>
export default {
    
}
</script>

<style lang="scss" scoped>
@import "@/assets/css/common/variable.scss";

/*! 底部部分*/
.footer-wrap {
    background: $black-bg;

    p {
        height: 40px;
        text-align: center;
        color: white;
        line-height: 40px;

        &:hover {
            cursor: pointer;
            color: $blue-font;
        }
    }
}
</style>
