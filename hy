<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>你好 - 我的个人网站</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"> <!-- 引入图标库 -->
    <style>
        :root {
            --primary-color: #6a11cb;
            --secondary-color: #2575fc;
            --text-color: #fff;
            --card-bg: rgba(255, 255, 255, 0.2);
            --shadow: 0 8px 32px rgba(31, 38, 135, 0.37);
            --transition: all 0.3s ease;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Microsoft YaHei', sans-serif;
        }

        body {
            background: linear-gradient(135deg, var(--primary-color) 0%, var(--secondary-color) 100%);
            min-height: 100vh;
            color: var(--text-color);
            padding-top: 80px; /* 给导航栏留空间 */
        }

        /* 导航栏 */
        nav {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            padding: 15px 5%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            z-index: 1000;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .logo {
            font-size: 1.8rem;
            font-weight: bold;
            text-decoration: none;
            color: var(--text-color);
        }

        .nav-links {
            display: flex;
            gap: 30px;
        }

        .nav-links a {
            color: var(--text-color);
            text-decoration: none;
            font-size: 1.1rem;
            transition: var(--transition);
            position: relative;
        }

        .nav-links a:hover {
            color: #ffd700;
        }

        .nav-links a::after {
            content: '';
            position: absolute;
            bottom: -5px;
            left: 0;
            width: 0;
            height: 2px;
            background: #ffd700;
            transition: var(--transition);
        }

        .nav-links a:hover::after {
            width: 100%;
        }

        /* 通用容器 */
        .section {
            max-width: 1200px;
            margin: 0 auto 60px;
            padding: 40px 20px;
        }

        .section-title {
            text-align: center;
            font-size: 2.5rem;
            margin-bottom: 40px;
            position: relative;
        }

        .section-title::after {
            content: '';
            position: absolute;
            bottom: -10px;
            left: 50%;
            transform: translateX(-50%);
            width: 80px;
            height: 4px;
            background: #ffd700;
            border-radius: 2px;
        }

        /* 首页内容（原内容优化） */
        .hero {
            text-align: center;
            padding: 80px 20px;
            background: var(--card-bg);
            border-radius: 20px;
            margin: 0 auto 60px;
            max-width: 900px;
            backdrop-filter: blur(10px);
            box-shadow: var(--shadow);
            animation: fadeIn 1s ease-out;
        }

        .hero h1 {
            font-size: 4rem;
            margin-bottom: 20px;
            text-shadow: 0 2px 10px rgba(0, 0, 0, 0.3);
        }

        .hero p {
            font-size: 1.5rem;
            line-height: 1.6;
            margin-bottom: 30px;
        }

        .decoration {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin: 30px 0;
        }

        .circle {
            width: 20px;
            height: 20px;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.7);
            animation: bounce 2s infinite;
        }

        .circle:nth-child(2) { animation-delay: 0.2s; }
        .circle:nth-child(3) { animation-delay: 0.4s; }
        .circle:nth-child(4) { animation-delay: 0.6s; }

        /* 关于我 */
        .about-content {
            display: flex;
            gap: 40px;
            align-items: center;
            flex-wrap: wrap;
        }

        .about-img {
            flex: 1;
            min-width: 300px;
            height: 350px;
            background: url('https://picsum.photos/id/1005/600/400') center/cover no-repeat;
            border-radius: 15px;
            box-shadow: var(--shadow);
        }

        .about-text {
            flex: 1;
            min-width: 300px;
            font-size: 1.2rem;
            line-height: 1.8;
        }

        /* 项目展示 */
        .projects-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
        }

        .project-card {
            background: var(--card-bg);
            border-radius: 15px;
            overflow: hidden;
            box-shadow: var(--shadow);
            transition: var(--transition);
            backdrop-filter: blur(10px);
        }

        .project-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
        }

        .project-img {
            height: 200px;
            background: url('https://picsum.photos/id/1/600/400') center/cover no-repeat;
        }

        .project-info {
            padding: 20px;
        }

        .project-info h3 {
            font-size: 1.5rem;
            margin-bottom: 10px;
        }

        .project-info p {
            font-size: 1rem;
            margin-bottom: 15px;
            line-height: 1.6;
        }

        .btn {
            display: inline-block;
            padding: 10px 25px;
            background: #ffd700;
            color: #333;
            text-decoration: none;
            border-radius: 30px;
            font-weight: bold;
            transition: var(--transition);
        }

        .btn:hover {
            background: #ffc400;
            transform: scale(1.05);
        }

        /* 技能列表 */
        .skills-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 30px;
        }

        .skill-item {
            background: var(--card-bg);
            padding: 25px;
            border-radius: 15px;
            box-shadow: var(--shadow);
            backdrop-filter: blur(10px);
        }

        .skill-header {
            display: flex;
            align-items: center;
            gap: 15px;
            margin-bottom: 15px;
        }

        .skill-icon {
            font-size: 2rem;
            color: #ffd700;
        }

        .skill-bar {
            height: 10px;
            background: rgba(255, 255, 255, 0.2);
            border-radius: 5px;
            overflow: hidden;
        }

        .skill-progress {
            height: 100%;
            background: #ffd700;
            border-radius: 5px;
            width: 0;
            transition: width 1.5s ease-in-out;
        }

        /* 联系表单 */
        .contact-form {
            max-width: 600px;
            margin: 0 auto;
            background: var(--card-bg);
            padding: 30px;
            border-radius: 15px;
            box-shadow: var(--shadow);
            backdrop-filter: blur(10px);
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-size: 1.1rem;
        }

        .form-group input,
        .form-group textarea {
            width: 100%;
            padding: 12px 15px;
            border: none;
            border-radius: 8px;
            background: rgba(255, 255, 255, 0.1);
            color: var(--text-color);
            font-size: 1rem;
        }

        .form-group textarea {
            height: 150px;
            resize: vertical;
        }

        .submit-btn {
            width: 100%;
            padding: 12px;
            background: #ffd700;
            color: #333;
            border: none;
            border-radius: 8px;
            font-size: 1.1rem;
            font-weight: bold;
            cursor: pointer;
            transition: var(--transition);
        }

        .submit-btn:hover {
            background: #ffc400;
        }

        /* 页脚 */
        footer {
            text-align: center;
            padding: 30px 20px;
            background: rgba(0, 0, 0, 0.2);
            margin-top: 60px;
        }

        .social-links {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-bottom: 20px;
        }

        .social-links a {
            color: var(--text-color);
            font-size: 1.5rem;
            transition: var(--transition);
        }

        .social-links a:hover {
            color: #ffd700;
            transform: translateY(-5px);
        }

        /* 动画 */
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @keyframes bounce {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-20px); }
        }

        /* 响应式 */
        @media (max-width: 768px) {
            .nav-links {
                display: none; /* 简化移动端导航，实际可替换为汉堡菜单 */
            }

            .hero h1 {
                font-size: 2.5rem;
            }

            .hero p {
                font-size: 1.2rem;
            }

            .section-title {
                font-size: 2rem;
            }
        }
    </style>
</head>
<body>
    <!-- 导航栏 -->
    <nav>
        <a href="#" class="logo">我的网站</a>
        <div class="nav-links">
            <a href="#home">首页</a>
            <a href="#about">关于我</a>
            <a href="#projects">项目</a>
            <a href="#skills">技能</a>
            <a href="#contact">联系</a>
        </div>
    </nav>

    <!-- 首页（原内容） -->
    <section id="home" class="hero section">
        <h1>你好！</h1>
        <p>欢迎来到我的个人网站</p>
        <p>这里是我分享想法、项目和创意的空间</p>
        
        <div class="decoration">
            <div class="circle"></div>
            <div class="circle"></div>
            <div class="circle"></div>
            <div class="circle"></div>
        </div>
        
        <div class="welcome-text">
            很高兴认识你！<br>
            期待与你一起探索数字世界的精彩
        </div>
    </section>

    <!-- 关于我 -->
    <section id="about" class="section">
        <h2 class="section-title">关于我</h2>
        <div class="about-content">
            <div class="about-img"></div>
            <div class="about-text">
                <p>你好！我是[你的名字]，一名热爱技术与创意的全栈开发者。</p>
                <p>专注于前端开发与用户体验设计，擅长将复杂需求转化为简洁优雅的解决方案。喜欢探索新技术，也享受在代码中创造价值的成就感。</p>
                <p>业余时间喜欢摄影、写作，相信生活与工作的平衡能让灵感持续迸发。</p>
                <a href="#contact" class="btn">联系我</a>
            </div>
        </div>
    </section>

    <!-- 项目展示 -->
    <section id="projects" class="section">
        <h2 class="section-title">我的项目</h2>
        <div class="projects-grid">
            <div class="project-card">
                <div class="project-img"></div>
                <div class="project-info">
                    <h3>响应式博客系统</h3>
                    <p>基于React+Node.js开发的个人博客平台，支持Markdown编辑、分类标签、评论互动等功能。</p>
                    <a href="#" class="btn">查看详情</a>
                </div>
            </div>
            <div class="project-card">
                <div class="project-img" style="background-image: url('https://picsum.photos/id/180/600/400');"></div>
                <div class="project-info">
                    <h3>电商数据可视化</h3>
                    <p>使用ECharts构建的销售数据分析面板，实时展示订单趋势、用户画像与商品热销排行。</p>
                    <a href="#" class="btn">查看详情</a>
                </div>
            </div>
            <div class="project-card">
                <div class="project-img" style="background-image: url('https://picsum.photos/id/26/600/400');"></div>
                <div class="project-info">
                    <h3>智能家居控制端</h3>
                    <p>跨平台移动应用（Flutter），实现灯光、空调、安防设备的远程控制与场景联动。</p>
                    <a href="#" class="btn">查看详情</a>
                </div>
            </div>
        </div>
    </section>

    <!-- 技能列表 -->
    <section id="skills" class="section">
        <h2 class="section-title">我的技能</h2>
        <div class="skills-container">
            <div class="skill-item">
                <div class="skill-header">
                    <i class="fab fa-html5 skill-icon"></i>
                    <h3>前端开发</h3>
                </div>
                <div class="skill-bar">
                    <div class="skill-progress" data-width="90"></div>
                </div>
            </div>
            <div class="skill-item">
                <div class="skill-header">
                    <i class="fab fa-node-js skill-icon"></i>
                    <h3>后端开发</h3>
                </div>
                <div class="skill-bar">
                    <div class="skill-progress" data-width="85"></div>
                </div>
            </div>
            <div class="skill-item">
                <div class="skill-header">
                    <i class="fas fa-database skill-icon"></i>
                    <h3>数据库</h3>
                </div>
                <div class="skill-bar">
                    <div class="skill-progress" data-width="80"></div>
                </div>
            </div>
            <div class="skill-item">
                <div class="skill-header">
                    <i class="fas fa-paint-brush skill-icon"></i>
                    <h3>UI/UX设计</h3>
                </div>
                <div class="skill-bar">
                    <div class="skill-progress" data-width="75"></div>
                </div>
            </div>
        </div>
    </section>

    <!-- 联系表单 -->
    <section id="contact" class="section">
        <h2 class="section-title">联系我</h2>
        <form class="contact-form">
            <div class="form-group">
                <label for="name">姓名</label>
                <input type="text" id="name" required>
            </div>
            <div class="form-group">
                <label for="email">邮箱</label>
                <input type="email" id="email" required>
            </div>
            <div class="form-group">
                <label for="message">留言</label>
                <textarea id="message" required></textarea>
            </div>
            <button type="submit" class="submit-btn">发送消息</button>
        </form>
    </section>

    <!-- 页脚 -->
    <footer>
        <div class="social-links">
            <a href="#"><i class="fab fa-github"></i></a>
            <a href="#"><i class="fab fa-weixin"></i></a>
            <a href="#"><i class="fab fa-linkedin"></i></a>
            <a href="#"><i class="fab fa-twitter"></i></a>
        </div>
        <p>&copy; 2024 我的网站 | 保留所有权利</p>
    </footer>

    <script>
        // 平滑滚动
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function(e) {
                e.preventDefault();
                document.querySelector(this.getAttribute('href')).scrollIntoView({
                    behavior: 'smooth'
                });
            });
        });

        // 技能条动画（滚动到可视区域时触发）
        const skillBars = document.querySelectorAll('.skill-progress');
        const observer = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    const width = entry.target.getAttribute('data-width');
                    entry.target.style.width = width + '%';
                }
            });
        }, { threshold: 0.5 });

        skillBars.forEach(bar => observer.observe(bar));

        // 表单提交提示
        const form = document.querySelector('.contact-form');
        form.addEventListener('submit', (e) => {
            e.preventDefault();
            alert('消息已发送！我会尽快回复你 😊');
            form.reset();
        });
    </script>
</body>
</html>
