const Service = require('./../core/base_service')

class ArticleService extends Service {
    // 获取文章列表
    async list (year) {
        let sql = `SELECT * FROM article WHERE status = 1`

        if (year) { // 查询当年的文章列表
            sql = `SELECT * FROM article WHERE status = 1 AND create_time LIKE '${year}%'`
        }
        const data = await this.query(sql)
        let ajaxData = [], item

        for ( let i = 0, len = data.length; i < len; i++ ) {
            item = data[i]

            ajaxData.push({
                id: item.id,
                title: item.title,
                desc: item.desc,
                image: item.image
            })
        }

        return ajaxData
    }
 
    // 文章导航列表
    async nav () {
        const sloganList = await this.querySloganList() // 获取每年的slogan
        let ajaxData = [], item

        for ( let i = 0, len = sloganList.length; i < len; i++ ) {
            item = sloganList[i]
            let data = await this.list(item.year) // 获取当年的列表

            data.forEach(item => { delete item.content // // 删除内容和图片
                 delete item.image 
            })
            ajaxData.push({
                year: item.year,
                slogan: item.slogan,
                articles: data
            })
        }

        return ajaxData
    }

    // 获取每年的slogan
    async querySloganList () {
        const sql = `SELECT * FROM year_slogan`
        const data = await this.query(sql)
        
        return data
    }

    // 获取文章的详情
    async detail (id) {
        const data = await this.get('article', {
            id: id,
            status: 1
        })
        let ajaxData = {}
        Object.assign(ajaxData, {
            id: data.id,
            title: data.title,
            content: data.content,
            author: data.author
        })
        
        return ajaxData
    }
}

module.exports = ArticleService