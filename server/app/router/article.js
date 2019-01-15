module.exports = app => {
  const {router , controller, config} = app;
  const version = config.apiVersion;

  router.post(version + '/article/reply/post', controller.article.postReply); // 提交文章评论
}