<template>
     <!-- 顶部模块  -->
    <nav class="nav-wrap">
        <div class="nav container">
                <div class="logo">
                    <router-link to="/">
                        <img src="@/assets/img/logo.jpeg" alt="">
                    </router-link>
                </div>
                <ul>
                    <li><a href="#">code</a></li>
                    <li><router-link to="/articleList">article</router-link></li>
                    <li><router-link to="/funny">funny</router-link></li>
                </ul> 
        </div>
    </nav>
</template>

<script>
export default {
    name: 'TheHeader'
}
</script>

<style lang="scss" scoped>
@import "@/assets/css/common/variable.scss";

/*!导航部分 */
.nav-wrap {
    background: $black-bg;
    min-width: 960px;
}

.nav {
    height: 40px;
    display: flex;
    justify-content: space-between;

    .logo {
        height: 40px;

        a {
            display: block;
        }

        img {
            height: 40px;
            border-radius: 4px;
            -webkit-border-radius: 4px;
            -moz-border-radius: 4px;
            -ms-border-radius: 4px;
            -o-border-radius: 4px;
        }
    }

    ul {
        display: flex;
        height: 40px;
        width: 600px;
        flex-direction: row-reverse;

        li {
            a {
                padding-left: 20px;
                padding-right: 20px;
                line-height: 40px;
                color: white;

                &:hover {
                    color: $blue-font;
                }
            }
        }
    }
}
</style>
