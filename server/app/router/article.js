module.exports = app => {
  const {router , controller, config} = app;
  const version = config.apiVersion;

  router.get(version + '/article/list', controller.article.list); // 提交文章评论
  router.get(version + '/article/nav', controller.article.nav); // 获取文章导航
  router.get(version + '/article/detail', controller.article.detail); // 提交文章评论
}