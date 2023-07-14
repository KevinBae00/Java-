<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.104.2">
    <title>Carousel Template · Bootstrap v5.2</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/carousel/">


    <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }

        .b-example-divider {
            height: 3rem;
            background-color: rgba(0, 0, 0, .1);
            border: solid rgba(0, 0, 0, .15);
            border-width: 1px 0;
            box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
        }

        .b-example-vr {
            flex-shrink: 0;
            width: 1.5rem;
            height: 100vh;
        }

        .bi {
            vertical-align: -.125em;
            fill: currentColor;
        }

        .nav-scroller {
            position: relative;
            z-index: 2;
            height: 2.75rem;
            overflow-y: hidden;
        }

        .nav-scroller .nav {
            display: flex;
            flex-wrap: nowrap;
            padding-bottom: 1rem;
            margin-top: -1px;
            overflow-x: auto;
            text-align: center;
            white-space: nowrap;
            -webkit-overflow-scrolling: touch;
        }

        .blue {
            color: blue;
        }
    </style>


    <!-- Custom styles for this template -->
    <link href="carousel.css" rel="stylesheet">
</head>
<body>

<header>
    <nav class="navbar navbar-expand-md navbar-dark fixed-top" style="background-color: #53eba6">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">ALGODA</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
                    aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav me-auto mb-2 mb-md-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#" style="color: purple;">홈</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" style="color: mediumpurple">내 단어장</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" style="color: mediumpurple">랭킹 보기</a>
                    </li>
                </ul>

                <div class="dropdown d-flex dropstart">
                    <a href="#" class="d-flex align-items-center link-light text-decoration-none dropdown-toggle"
                       data-bs-toggle="dropdown" aria-expanded="false">
                        <strong>mdo</strong>
                    </a>
                    <ul class="dropdown-menu text-small shadow">
                        <li><a class="dropdown-item " href="#">Sign out</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
</header>

<main>

    <div id="myCarousel" class="carousel slide" data-bs-ride="algoda">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true"
                    aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg"
                     aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
                    <rect width="100%" height="100%" fill="#BDFCC9" class="image"/>
                </svg>

                <div class="container ">
                    <div class="carousel-caption blue">
                        <h1>apple</h1>
                        <p>사과</p>
                        <p><a class="btn btn-lg" href="#" style="background-color: #53eba6">단어장에 넣기</a></p>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg"
                     aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
                    <rect width="100%" height="100%" fill="#BDFCC9"/>
                </svg>

                <div class="container">
                    <div class="carousel-caption blue">
                        <h1>important</h1>
                        <p>중요한</p>
                        <p><a class="btn btn-lg" href="#" style="background-color: #53eba6">단어장에 넣기</a></p>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg"
                     aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
                    <rect width="100%" height="100%" fill="#BDFCC9"/>
                </svg>

                <div class="container">
                    <div class="carousel-caption blue">
                        <h1>vivacious</h1>
                        <p>명량한</p>
                        <p><a class="btn btn-lg" href="#" style="background-color: #53eba6">단어장에 넣기</a></p>
                    </div>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>


    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

    <div class="container marketing">

        <!-- Three columns of text below the algoda -->
        <div class="row">
            <div class="col-lg-4">
                <img src="img/middle.jpg" alt="">
                <h2 class="fw-normal">중등 영단어</h2>
                <p>중고등 학생 떄 배워야 할 필수 영단어 1000개 모음집</p>
                <p><a class="btn" href="#" style="background-color: #53eba6">영단어 바로 보기 &raquo;</a></p>
            </div><!-- /.col-lg-4 -->
            <div class="col-lg-4">
                <img src="img/university.jpg" alt="">
                <h2 class="fw-normal">수능 영단어</h2>
                <p>대학 입시, 좋은 대학을 가기 위한 필수 영단어 1000개 모음집</p>
                <p><a class="btn" href="#" style="background-color: #53eba6">영단어 바로 보기 &raquo;</a></p>
            </div><!-- /.col-lg-4 -->
            <div class="col-lg-4">
                <img src="img/job.jpg" alt="">
                <h2 class="fw-normal">직장인 영단어</h2>
                <p>영어가 필수인 세대! 직장인들을 위한 필수 영단어 1000개 모음집</p>
                <p><a class="btn" href="#" style="background-color: #53eba6">영단어 바로 보기 &raquo;</a></p>
            </div><!-- /.col-lg-4 -->
        </div><!-- /.row -->

        <hr class="featurette-divider">

    </div><!-- /.container -->


    <!-- FOOTER -->
    <footer class="container">
        <img class="float-end" src="img/logo.png" alt="" width="90">
        <h1>ALGODA</h1>
    </footer>
</main>


<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>


</body>
</html>
