import api from './api/index'
import axios from 'axios'

const article = {
    queryArticleList () { // 文章列表接口
        return axios.get(api.article.list)
    },
    queryArticleNav () { // 文章导航接口
        return axios.get(api.article.nav)
    },
    getArticleDetail (id) { // 获取文章详情
        return axios.get(api.article.detail + '?id=' + id)
    }
}

export default article