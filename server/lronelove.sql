-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-01-21 14:37:34
-- 服务器版本： 5.6.41
-- PHP Version: 7.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lronelove`
--

-- --------------------------------------------------------

--
-- 表的结构 `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL COMMENT '文章id',
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `content` text CHARACTER SET utf8 COMMENT '文章内容',
  `author` varchar(255) CHARACTER SET utf8 DEFAULT 'lronelove' COMMENT '作者',
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '文章图片',
  `status` tinyint(10) NOT NULL DEFAULT '1' COMMENT '0删除，1存在'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `article`
--

INSERT INTO `article` (`id`, `title`, `create_time`, `content`, `author`, `image`, `status`) VALUES
(1, '萤火虫', '2019-01-16 09:10:52', '<div class=\"blog_details_20120222\"><div><div>很久以前，有一个不会发光的昆虫，叫做萤火虫。<br>  它出生在白天，那时候一束束阳光偷偷钻进森林的每一个角落，萤火虫很喜欢在花丛中和蝴蝶共舞，在树梢间与鸟儿共鸣。它喜欢每一寸阳光所带来的温暖。<br><br>  可是，任何美好的事物都会像时光的流隙一样，匆匆划过你的指尖。有一天，太阳突然消失了。萤火虫不相信是太阳不见了，它一直在寻找，在每一片遮住阳光的绿叶下，在潺潺流水的每一道波纹里。可它始终找不到，一丝丝足迹，一丝丝温暖。<br><br><br><br><br></div><div><br></div><div><img src=\"http://m.qpic.cn/psb?/V10WQJfq05jwiH/grc*ibBzXuGGON9L7Rnqs7QWHC2qHU.EFVBFg34p5Xk!/b/dAsBAAAAAAAA&amp;ek=1&amp;kp=1&amp;pt=0&amp;bo=rANyAgAAAAAFEOw!&amp;t=5&amp;su=020544305&amp;tm=1485468000#sce=15-1-1&amp;rf=v1_and_qz_7.1.1_288_xm_a-2-9\"></div><div><br><br><br>   就在这个时候，当萤火虫以为这个世界没有光明的时候，一束冰冷但是淡雅的月光撒在它疲惫的心上。它惊喜，我又可以看见光明了！它享受与月光的每一寸时间。<br><br>    可是，好景不长，月亮有一天也消失了。整个世界又陷入了黑暗，它想再次去寻找月亮或者太阳的足迹，却始终找不到。<br><br>    当萤火虫接近绝望的时候，耳边突然传来了父亲的声音：任何光影都会消散，当你升起自己的太阳的时候，光明就永远都不会离去。<br><br>   萤火虫拍拍它满是灰尘的翅膀，发出了一丝微弱的光亮，照亮了整片世界。</div><div><br></div><br></div></div>', 'lronelove', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3188760330,463914582&fm=27&gp=0.jpg', 1),
(2, '故梦', '2019-01-16 12:46:15', '<p><br></p><p style=\"white-space: normal;\">旧忆就像一扇窗，推开就再难合上。<br>西大行政大楼上贴满了翠绿的爬山虎，一轮皎洁的月光洒在水塘里，鱼儿偶尔露出水面，激起一圈圈涟漪。</p><p style=\"white-space: normal;\"><img src=\"http://b319.photo.store.qq.com/psb?/V10WQJfq05jwiH/Nm*fbInfm2DzT6c*WqCaX6KcdDiarvgILqLdS0b.KeE!/b/dD8BAAAAAAAA&amp;bo=IAMqBAAAAAARECo!\"></p><p style=\"white-space: normal;\"><br>“今天我高兴！你别碰我！我没喝醉！”，小皓被四五个同学扶着，踉踉跄跄地爬着楼梯，这是四年内班里最后一次聚会，也是最后一次看见她。他回到寝室，倒在地面上，嘴里一直说着话，一些憋了几年的话却怎么也说不出口。<br>他亲着地板，大笑着，“今天我高兴！”，晚上的画面一幕幕浮现。同学们都吃着，喝着，闹着，她脸颊通红，望着窗外的月光，静静地发呆，眼角有一丝泪光在闪烁。小皓喉咙哽咽着，端起酒杯，一饮而尽。<br>小光和小明把他抬到床上，不一会儿呼噜声响彻整个寝室，小明点起一根云烟，猛的一口，缓缓吐出一口烟，红润的脸颊滚烫着。他用手捂着嘴，看着朦胧的烟气里她倚着椅子，脸红红的，他几乎和班上每个人都喝了，除了她。她学习成绩很好，也很坚强，这一次居然哭了，哭的稀里哗啦，长长的睫毛沾着泪珠，就像清晨叶间的一颗颗露珠。他笑了，他眼睛很小，一笑就眯成一条线，“来，室友四年，干一杯！”，他举起酒杯，仰头头，眯着眼，微微发红的喉咙互动着。喝完，他一屁股坐在椅子上，笑着，眼睛眯成一条线。他多想端起酒杯过去和她喝一杯，可距离好远了。</p><p style=\"white-space: normal;\"><img src=\"http://b318.photo.store.qq.com/psb?/V10WQJfq05jwiH/gYyKmEGuihShDWMxWHRYNM4fiuk*P5tQLbPAFnvY1rk!/b/dD4BAAAAAAAA&amp;bo=IAMqBAAAAAARECo!\"></p><p style=\"white-space: normal;\">灰黄的灯光，洒在小光的脸上，他们都睡了，他却无法入睡。<br>他看着和她一起拍的照片，嘴角微微上扬，她是个吃货，她总知道哪里好吃，哪里好玩，他没遇见她之前很宅，但是他很帅，而且脾气很好，他们很合得来。她穿着洁白的婚纱，一丝微风夹杂着白兰的清香，吹散了她的发髻，他一只手捧着她的脸，轻轻整理好她的凌乱的头发，轻轻地吻了下她的额头，她看了一眼，笑了，两靥如花，害羞地低下了头，他笑了。这是他们的婚纱照，可惜她不是新娘，他也不是新郎。他看着回家的火车票，也许这是最后一张，他笑了，灰黄的灯光洒在他俊俏的侧脸上。<br>小王轻轻地关上了寝室门，离开了空荡荡的寝室，离开了空荡荡的橘园，离开了空荡荡的学校，却拖着重重的行李，以及像故梦一样，重重的回忆，笑而不语。<br></p><p style=\"white-space: normal;\"><img src=\"http://b363.photo.store.qq.com/psb?/V10WQJfq05jwiH/QleIMQD5hzC7uVp13kUyoJv0fJwuCN2AhsiF1sRLaMA!/b/dGsBAAAAAAAA&amp;bo=KgQgAwAAAAARECo!\"></p><p style=\"white-space: normal;\"></p><p><br></p>', 'lronelove', 'http://a3.qpic.cn/psb?/V10WQJfq05jwiH/gYyKmEGuihShDWMxWHRYNM4fiuk*P5tQLbPAFnvY1rk!/b/dD4BAAAAAAAA&ek=1&kp=1&pt=0&bo=IAMqBAAAAAARECo!&tl=3&su=0143933489&tm=1547989200&sce=0-12-12&rf=2-9', 1),
(3, '再见', '2018-01-16 09:14:33', '<div style=\"font-family: Arial; font-size: 14px; white-space: normal;\">冰凉且微甜，微带一丝醉意。<br><br></div><div style=\"font-family: Arial; font-size: 14px; white-space: normal;\"><img src=\"http://b304.photo.store.qq.com/psb?/V10WQJfq05jwiH/wZdJJH*gWs3S6lnxkDLhUByfFNCGrwCpRDS8wYURlNQ!/b/dDABAAAAAAAA&amp;bo=oAU4BAAAAAAREL4!\" style=\"vertical-align: top;\"></div><div style=\"font-family: Arial; font-size: 14px; white-space: normal;\"><br>好久没有来这里喝酒了，隐隐约约想起第一次来这里的场景，蒙叉叉的土鳖，那醉意似乎渐渐上头，似乎那晚的醉意，可再也回不到那天。<br><br>突然想起初中毕业前的一天，很要好的朋友和我一起爬扁鹊山，因为贪玩，我们在山上迷路了。最后终于找到了出路！<br><br>“喔喔喔……！”，你的叫声回荡在空荡荡的山山底。你突然问我，“朋友，爱人，亲人谁最重要”，我说，“朋友，亲人，爱人”。“我觉得是，亲人，朋友，爱人”。直到很久，才发现你是对的。我那时或许聪明，但肯定很傻。<br><br>我不喜欢喝酒，总是没有一个理由去喝酒。有时候走在路上，带上耳机，“我祈祷拥有一颗最亮的星，和会流泪的眼睛”。第一次听到这首歌的时候，我觉得好蠢，我们不是都有会流泪的眼睛么。现在再听，忽然发现我也没有了。&nbsp;<br><br>很多时候，我们原以为亘古不变的真理，或许在今天就是一个笑话。<br><br><br></div><div style=\"font-family: Arial; font-size: 14px; white-space: normal;\"><img src=\"http://b311.photo.store.qq.com/psb?/V10WQJfq05jwiH/*rtrHerfO71c98haqMPcRvX6LITE5RBR6q5ElF2qqLs!/b/dDcBAAAAAAAA&amp;bo=LwIGAgAAAAAFEBo!\" style=\"vertical-align: top;\"></div><div style=\"font-family: Arial; font-size: 14px; white-space: normal;\"><br>夜渐浓，灯依旧通红。想去追问，什么才是永恒。<br><br>或许没有，或许还没遇见。<br><br>深圳最近雨多，下个不停，我的晴空被你藏在哪里？或许抬抬头，你就在远方。<br><br><br></div><div style=\"font-family: Arial; font-size: 14px; white-space: normal;\"><img src=\"http://b310.photo.store.qq.com/psb?/V10WQJfq05jwiH/ppZ3q7CYlfsPC8xcqQjgOu1xZQKa*EhXCgsfvObnn9k!/b/dDYBAAAAAAAA&amp;bo=oAU4BAAAAAARII4!\" style=\"vertical-align: top;\"></div><div style=\"font-family: Arial; font-size: 14px; white-space: normal;\"><br>有天晚上，我走过天桥，路上车来车往，车灯点缀着夜的孤寂。或许很多东西都会在你人生之中来又去，从刚开始的难以割舍到现在司空见惯。前几天一直戴在手上的戒指丢了，我也不想去再寻找了。得之我幸，失之我命。<br><br>如果是你的东西，它就不会离开；不属于你的东西，你再挽留也没有用。<br><br></div><div style=\"font-family: Arial; font-size: 14px; white-space: normal;\"><img src=\"http://b309.photo.store.qq.com/psb?/V10WQJfq05jwiH/qQPcQhjqKghn6cBihCbXv*Hr02cY7Zb9RO0sX5Th89o!/b/dDUBAAAAAAAA&amp;bo=OASgBQAAAAAREL4!\" style=\"vertical-align: top;\"></div><div style=\"font-family: Arial; font-size: 14px; white-space: normal;\"><br><br>夜渐浓，我还得回家，可何处是家，还好有你和梦，陪我浪迹天涯。<br><br>从哪里开始，就从哪里结束。喝完最后一杯酒，不再回头。</div><p><br></p>', 'lronelove', 'http://a1.qpic.cn/psb?/V10WQJfq05jwiH/wZdJJH*gWs3S6lnxkDLhUByfFNCGrwCpRDS8wYURlNQ!/b/dDABAAAAAAAA&ek=1&kp=1&pt=0&bo=oAU4BAAAAAAREL4!&tl=3&su=0141311329&tm=1547989200&sce=0-12-12&rf=2-9', 1),
(4, '牛肉面', '2019-01-14 00:00:00', '<p><span style=\"font-family: Arial; font-size: 14px; white-space: normal;\">&nbsp; &nbsp; &nbsp; &nbsp;繁星点缀着静谧的夜空，一颗流星从夜空滑落，像一滴泪滑落在脸颊。</span><br><span style=\"font-family: Arial; font-size: 14px; white-space: normal;\">&nbsp; &nbsp; &nbsp; &nbsp;</span><img alt=\"图片\" src=\"http://r.photo.store.qq.com/psb?/V10WQJfq05jwiH/GGBhoRdlkMchBNppaf0RhI6FH0CKP*C65onSZRAX388!/o/dDMBAAAAAAAA\" style=\"vertical-align: top; font-family: Arial; font-size: 14px; white-space: normal; width: 500px; height: 314px;\"><br><span style=\"font-family: Arial; font-size: 14px; white-space: normal;\">&nbsp; &nbsp; &nbsp; &nbsp;泛着黄韵的灯光洒在他们相互依偎的身上，手牵着手走过天桥，女孩甜蜜地笑着，脸上的酒窝甜甜地漾开, 白里透红的脸像七月的粉莲。</span><br><span style=\"font-family: Arial; font-size: 14px; white-space: normal;\">&nbsp; &nbsp; &nbsp; “我饿了”，女孩突然停下来，嘟起小嘴。</span><br><span style=\"font-family: Arial; font-size: 14px; white-space: normal;\">&nbsp; &nbsp; &nbsp; 昏黄的灯光洒在他俊俏的脸上，他眯起眼，他笑着说：“走， 我们去吃牛肉面！”</span><br><span style=\"font-family: Arial; font-size: 14px; white-space: normal;\">&nbsp; &nbsp; &nbsp; “好！好！好！”，她高兴地蹦了起来，笑容如春天的樱花。</span><br><span style=\"font-family: Arial; font-size: 14px; white-space: normal;\">&nbsp; &nbsp; &nbsp; 他笑着，伸进荷包里，发现只有5块钱，喉咙鼓动了一下。</span><br><span style=\"font-family: Arial; font-size: 14px; white-space: normal;\">&nbsp; &nbsp; &nbsp;&nbsp;</span><img alt=\"图片\" src=\"http://r.photo.store.qq.com/psb?/V10WQJfq05jwiH/YhfYbYczxLOte8OqNc2Dt3stfsotoZ7beV185xIcT*0!/o/dFYBAAAAAAAA\" style=\"vertical-align: top; font-family: Arial; font-size: 14px; white-space: normal; width: 500px; height: 300px;\"><br><span style=\"font-family: Arial; font-size: 14px; white-space: normal;\">&nbsp; &nbsp; &nbsp;</span><br><span style=\"font-family: Arial; font-size: 14px; white-space: normal;\">&nbsp; &nbsp; &nbsp;就这样，女孩蹦蹦跳跳拉着他的手到了面馆。</span><br><span style=\"font-family: Arial; font-size: 14px; white-space: normal;\">&nbsp; &nbsp; &nbsp;“老板！来两碗牛肉面！”</span><br><span style=\"font-family: Arial; font-size: 14px; white-space: normal;\">&nbsp; &nbsp; &nbsp;“好嘞！”，一位穿着白色衣服的师傅说。</span><br><span style=\"font-family: Arial; font-size: 14px; white-space: normal;\">&nbsp; &nbsp; &nbsp;“我不饿，刚在家吃过饭了。老板来一碗就够了。”他眯着眼，干净的脸在灯光下越发帅气。</span><br><br><span style=\"font-family: Arial; font-size: 14px; white-space: normal;\">&nbsp; &nbsp;&nbsp;</span><img alt=\"图片\" src=\"http://r.photo.store.qq.com/psb?/V10WQJfq05jwiH/DSnm*Q8CkmDFElHJw5BoC6b77sB3Ycg27oHt39QFYv4!/o/dD4BAAAAAAAA\" style=\"vertical-align: top; font-family: Arial; font-size: 14px; white-space: normal; width: 846px; height: 564px;\"><br><span style=\"font-family: Arial; font-size: 14px; white-space: normal;\">火车缓缓开启，缓缓离开这座城。</span><br><span style=\"font-family: Arial; font-size: 14px; white-space: normal;\">他呆呆地望着窗外，目不转睛，想再多看一眼这座因为有她而不一样的城，却再也不敢再看她一眼。</span><br><span style=\"font-family: Arial; font-size: 14px; white-space: normal;\">“为什么要离开我？！”，突然，她的短信来了。</span><br><span style=\"font-family: Arial; font-size: 14px; white-space: normal;\">“我不喜欢你了“<br>“难道以前你说的话都是骗人的么？大骗子！”<br>“什么爱情都会变，谢谢你陪我这些天。以后不要被别人骗了！”。眼泪在阳光下显得格外耀眼。<br><br><img alt=\"图片\" src=\"http://r.photo.store.qq.com/psb?/V10WQJfq05jwiH/9HEddwthz6isavgDuUw3wsdFSVwbO8ccO3av.AotA9w!/o/dDQBAAAAAAAA\" style=\"vertical-align: top; width: 846px; height: 576px;\"><br><br>&nbsp;多年以后，还是相同的街，她牵着孩子的手走在大街上。<br>“妈妈，我饿了”，扎着羊尾辫的小女孩捂着自己的肚子说。<br>“妈妈带你吃牛肉面好不好？”，妈妈弯下身，冲着孩子笑，脸上的酒窝仍然似盛夏的粉莲。<br>“好！好！好！”，小女孩蹦蹦跳跳地叫到。<br>“爸爸没有带零钱，我们回去吃好不好？”，他摸摸孩子的头。<br>“不嘛！不嘛！我就要吃！”，小女孩嘟着小嘴。<br><br>“叔叔请你吃”，一个熟悉却又略带沧桑的声音。<br>她抬起头，呆在那里。<br>他笑着，眯着眼，昏黄的灯光洒在他的脸上，仿佛一切都回到了从前。</span></p>', 'lronelove', 'http://r.photo.store.qq.com/psb?/V10WQJfq05jwiH/GGBhoRdlkMchBNppaf0RhI6FH0CKP*C65onSZRAX388!/o/dDMBAAAAAAAA', 1),
(5, '辣椒炒瘦肉', '2018-01-20 00:00:00', '<div style=\"font-family: Arial; font-size: 14px; white-space: normal;\">&nbsp; &nbsp; &nbsp; &nbsp;“噗呲噗呲....”,妹妹拿着长长的‘绳鞭‘旋转着。一道光划破了黑夜，也划破了我的记忆。<br>&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;“怡俩子（俩子，菇凉娃的意思），来吃饭了！”，外婆的声音总是很洪亮。我们几个一股脑地跑进了厨房，一阵阵香气扑鼻而来，有酸酸辣辣的“盐菜巴巴子”，亲手做的香肠，还有一笼应有尽有的蒸菜。&nbsp;当然，外婆最拿手的那一定是辣椒炒瘦肉。外婆小心翼翼端上热蓬蓬的辣椒炒瘦肉，外婆瘦小的脸上满是笑容，仍是一头乌黑的头发，只是常年劳作的手上纹满了皱纹。<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 兄弟姐妹几个，数我妹最好吃，外号“粉粹机”，一下午只吃56个苹果的妹子。老妹也特喜欢吃，辣椒炒瘦肉。说实话，外婆炒的瘦肉有可能没有电视上美食的颜色那样鲜艳，但是就是好吃！我刚开始不是很喜欢吃辣椒，但是外婆炒的辣椒炒瘦肉把火候掌握的刚刚好，不生硬也不干枯，炒瘦肉的时候额外加了一些生粉，吃起来也很舒服。<br>&nbsp; &nbsp; &nbsp; &nbsp;不到一会儿，盘里的辣椒炒瘦肉就没了，而且盘里的汤伴起饭来格外好吃。<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; “咯...，咯...”,吃饱的我们有时会打起隔，在外婆家我们基本不用小碗，都是和我们外婆一样加大号的，一人两碗。外婆看我一个个吃得饱饱的，又匆匆收拾起桌子，每次我们帮外婆的时候，外婆总是会说，“乖乖，你们把碗放那里，我来收。”<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 过年第一天大早，我们就给外婆拜年，而外婆早已经起来给我做早饭了，洗脸的热水也烧好了。<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 外婆笑眯眯的给我们压岁钱，虽然我妈一直说，“我帮你保管”，一直帮我保管着吧。<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img alt=\"图片\" src=\"http://b242.photo.store.qq.com/psb?/V10WQJfq05jwiH/IJa*wMf6J0P9aC94ZVRg5n7x.SEwUmICvMxXZzHdif4!/b/dPIAAAAAAAAA&amp;bo=igEtAQAAAAAREIA!\" style=\"vertical-align: top; width: 394px; height: 302px;\"><br>&nbsp; &nbsp; 不知不觉，好多年已经过去了，外婆头发也多了一些白发，身体比之前也差了很多。我离开家的那个中午，外婆拉着我说，“这钱你拿着，买点东西吃”。我不要，“嫌外婆的钱少，就不要”，我说，“不是的，我已经长大了，我可以养活我自己了”。外婆硬要给我，我说：“‘这钱我不要，外婆，你给我再炒一盘青椒炒瘦肉吧“，外婆笑的眼睛眯成一弯月，“好好好，好久没做了，不知道好不好吃？”<br>&nbsp; &nbsp; “肯定好吃”，我说。外婆高高兴兴地拿起了锅碗瓢盆。中午菜很丰盛，很多我喜欢吃的菜，外婆端上香蓬蓬的青椒炒瘦肉，我迫不及待的夹了些，吃了起来。“有点咸”，有人说。“好吃么？好久没做了，肯定做的不好吃了。”，我说：“好吃”，我又吃了两碗。<br>&nbsp; &nbsp; 以为永远年轻的外婆，或许真的老了，但每年回家都希望能吃到外婆的辣椒炒瘦肉。<br>&nbsp; &nbsp;&nbsp;</div><div style=\"font-family: Arial; font-size: 14px; white-space: normal;\">&nbsp;&nbsp;</div><p><br></p>', 'lronelove', 'http://a3.qpic.cn/psb?/V10WQJfq05jwiH/IJa*wMf6J0P9aC94ZVRg5n7x.SEwUmICvMxXZzHdif4!/b/dPIAAAAAAAAA&ek=1&kp=1&pt=0&bo=igEtAQAAAAAREIA!&tl=3&su=038613953&tm=1547992800&sce=0-12-12&rf=2-9', 1);

-- --------------------------------------------------------

--
-- 表的结构 `year_slogan`
--

CREATE TABLE `year_slogan` (
  `year` int(5) NOT NULL COMMENT '年',
  `slogan` varchar(255) NOT NULL COMMENT '口号'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `year_slogan`
--

INSERT INTO `year_slogan` (`year`, `slogan`) VALUES
(2018, '流年碎忆，2018'),
(2019, '平淡似水，2019');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `year_slogan`
--
ALTER TABLE `year_slogan`
  ADD PRIMARY KEY (`year`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章id', AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `year_slogan`
--
ALTER TABLE `year_slogan`
  MODIFY `year` int(5) NOT NULL AUTO_INCREMENT COMMENT '年', AUTO_INCREMENT=2020;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
