/* 处理文章详情，列表以及对应回复的操作 */
const Controller = require('../core/base_controller.js')
class ArticleController extends Controller { 
  // 评论取消点赞
  async unlike () {
    const body = this.ctx.request.body
    const { userId, replyId } = body
    const data = await this.ctx.service.article.unlike(userId, replyId)

    if (data) {
      this.success('', '取消点赞成功')
    } else {
      this.fail('', '操作失败')
    }
  }
}

module.exports = ArticleController