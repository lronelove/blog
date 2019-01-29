// const host = 'http://47.112.12.78:7001/api/v1'
const host = 'http://localhost:7001/api/v1'

export default {
    article: {
        'list': host + '/article/list', // 文章列表接口
        'nav': host + '/article/nav', // 文章列表接口
        'detail': host + '/article/detail', // 文章详情接口
    }
}