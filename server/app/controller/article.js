/* 处理文章详情，列表以及对应回复的操作 */
const Controller = require('../core/base_controller.js')

class ArticleController extends Controller { 
  // 文章列表
  async list () {
    const data = await this.ctx.service.article.list()
    this.success(data)
  }

  // 文章导航列表
  async nav () {
    const data = await this.ctx.service.article.nav()
    this.success(data)
  }

  // 文章详情
  async detail () {
    const id = this.ctx.query.id
    const data = await this.ctx.service.article.detail(id)
    this.success(data)
  }
}

module.exports = ArticleController