<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>Tables - SB Admin</title>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet"/>
    <link href="css/styles.css" rel="stylesheet"/>
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
<nav class="navbar navbar-expand-md navbar-dark fixed-top " style="background-color: #53eba6">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">ALGODA</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
                aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav me-auto mb-2 mb-md-0">
                <li class="nav-item">
                    <a class="nav-link" href="#" style="color: mediumpurple;">홈</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" style="color: mediumpurple">내 단어장</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#" style="color: purple;">랭킹 보기</a>
                </li>
            </ul>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarNavDarkDropdown" aria-controls="navbarNavDarkDropdown" aria-expanded="false"
                    aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDarkDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                           aria-expanded="false" style="color: mediumpurple">
                            유형 선택
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">중등 영단어</a></li>
                            <li><a class="dropdown-item" href="#">수능 영단어</a></li>
                            <li><a class="dropdown-item" href="#">직장인 영단어</a></li>
                        </ul>
                    </li>
                </ul>
            </div>

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
<div id="layoutSidenav">
    <div id="layoutSidenav_content" style="width: 90%;">
        <main>
            <div class="container-fluid px-4">
                <h1 class="mt-4">직장인 영단어</h1>
                <div class="card mb-4">
                    <div class="card-body">
                        정원님의 랭킹을 100 등입니다.
                    </div>
                </div>
                <div class="card mb-4">
                    <div class="card-header">
                        <i class="fas fa-table me-1"></i>
                        랭킹
                    </div>
                    <div class="card-body">
                        <table id="datatablesSimple">
                            <thead>
                            <tr>
                                <th>랭킹</th>
                                <th>닉네임</th>
                                <th>아이디</th>
                                <th>점수</th>

                            </tr>
                            </thead>
                            <tfoot>
                            <tr>
                                <th>1</th>
                                <th>Position</th>
                                <th>Office</th>
                                <th>Age</th>


                            </tr>
                            </tfoot>
                            <tbody>
                            <tr>
                                <td>2</td>
                                <td>System Architect</td>
                                <td>Edinburgh</td>
                                <td>61</td>


                            </tr>
                            <tr>
                                <td>3</td>
                                <td>Accountant</td>
                                <td>Tokyo</td>
                                <td>63</td>


                            </tr>
                            <tr>
                                <td>4</td>
                                <td>Junior Technical Author</td>
                                <td>San Francisco</td>
                                <td>66</td>


                            </tr>
                            <tr>
                                <td>5</td>
                                <td>Senior Javascript Developer</td>
                                <td>Edinburgh</td>
                                <td>22</td>

                            </tr>
                            <tr>
                                <td>6</td>
                                <td>Accountant</td>
                                <td>Tokyo</td>
                                <td>33</td>


                            </tr>
                            <tr>
                                <td>7</td>
                                <td>Integration Specialist</td>
                                <td>New York</td>
                                <td>61</td>


                            </tr>
                            <tr>
                                <td>8</td>
                                <td>Sales Assistant</td>
                                <td>San Francisco</td>
                                <td>59</td>


                            </tr>
                            <tr>
                                <td>9</td>
                                <td>Integration Specialist</td>
                                <td>Tokyo</td>
                                <td>55</td>


                            </tr>
                            <tr>
                                <td>10</td>
                                <td>Javascript Developer</td>
                                <td>San Francisco</td>
                                <td>39</td>

                            </tr>
                            <tr>
                                <td>11</td>
                                <td>Software Engineer</td>
                                <td>Edinburgh</td>
                                <td>23</td>


                            </tr>
                            <tr>
                                <td>12</td>
                                <td>Office Manager</td>
                                <td>London</td>
                                <td>30</td>


                            </tr>
                            <tr>
                                <td>13</td>
                                <td>Support Lead</td>
                                <td>Edinburgh</td>
                                <td>22</td>


                            </tr>
                            <tr>
                                <td>14</td>
                                <td>Regional Director</td>
                                <td>San Francisco</td>
                                <td>36</td>


                            </tr>
                            <tr>
                                <td>Haley Kennedy</td>
                                <td>Senior Marketing Designer</td>
                                <td>London</td>
                                <td>43</td>

                            </tr>
                            <tr>
                                <td>Tatyana Fitzpatrick</td>
                                <td>Regional Director</td>
                                <td>London</td>
                                <td>19</td>

                            </tr>
                            <tr>
                                <td>Michael Silva</td>
                                <td>Marketing Designer</td>
                                <td>London</td>
                                <td>66</td>

                            </tr>
                            <tr>
                                <td>Paul Byrd</td>
                                <td>Chief Financial Officer (CFO)</td>
                                <td>New York</td>
                                <td>64</td>

                            </tr>
                            <tr>
                                <td>Gloria Little</td>
                                <td>Systems Administrator</td>
                                <td>New York</td>
                                <td>59</td>

                            </tr>
                            <tr>
                                <td>Bradley Greer</td>
                                <td>Software Engineer</td>
                                <td>London</td>
                                <td>41</td>

                            </tr>
                            <tr>
                                <td>Dai Rios</td>
                                <td>Personnel Lead</td>
                                <td>Edinburgh</td>
                                <td>35</td>

                            </tr>
                            <tr>
                                <td>Jenette Caldwell</td>
                                <td>Development Lead</td>
                                <td>New York</td>
                                <td>30</td>

                            </tr>
                            <tr>
                                <td>Yuri Berry</td>
                                <td>Chief Marketing Officer (CMO)</td>
                                <td>New York</td>
                                <td>40</td>

                            </tr>
                            <tr>
                                <td>Caesar Vance</td>
                                <td>Pre-Sales Support</td>
                                <td>New York</td>
                                <td>21</td>

                            </tr>
                            <tr>
                                <td>Doris Wilder</td>
                                <td>Sales Assistant</td>
                                <td>Sidney</td>
                                <td>23</td>

                            </tr>
                            <tr>
                                <td>Angelica Ramos</td>
                                <td>Chief Executive Officer (CEO)</td>
                                <td>London</td>
                                <td>47</td>

                            </tr>
                            <tr>
                                <td>Gavin Joyce</td>
                                <td>Developer</td>
                                <td>Edinburgh</td>
                                <td>42</td>

                            </tr>
                            <tr>
                                <td>Jennifer Chang</td>
                                <td>Regional Director</td>
                                <td>Singapore</td>
                                <td>28</td>

                            </tr>
                            <tr>
                                <td>Brenden Wagner</td>
                                <td>Software Engineer</td>
                                <td>San Francisco</td>
                                <td>28</td>

                            </tr>
                            <tr>
                                <td>Fiona Green</td>
                                <td>Chief Operating Officer (COO)</td>
                                <td>San Francisco</td>
                                <td>48</td>

                            </tr>
                            <tr>
                                <td>Shou Itou</td>
                                <td>Regional Marketing</td>
                                <td>Tokyo</td>
                                <td>20</td>

                            </tr>
                            <tr>
                                <td>Michelle House</td>
                                <td>Integration Specialist</td>
                                <td>Sidney</td>
                                <td>37</td>

                            </tr>
                            <tr>
                                <td>Suki Burks</td>
                                <td>Developer</td>
                                <td>London</td>
                                <td>53</td>

                            </tr>
                            <tr>
                                <td>Prescott Bartlett</td>
                                <td>Technical Author</td>
                                <td>London</td>
                                <td>27</td>

                            </tr>
                            <tr>
                                <td>Gavin Cortez</td>
                                <td>Team Leader</td>
                                <td>San Francisco</td>
                                <td>22</td>

                            </tr>
                            <tr>
                                <td>Martena Mccray</td>
                                <td>Post-Sales support</td>
                                <td>Edinburgh</td>
                                <td>46</td>

                            </tr>
                            <tr>
                                <td>Unity Butler</td>
                                <td>Marketing Designer</td>
                                <td>San Francisco</td>
                                <td>47</td>

                            </tr>
                            <tr>
                                <td>Howard Hatfield</td>
                                <td>Office Manager</td>
                                <td>San Francisco</td>
                                <td>51</td>

                            </tr>
                            <tr>
                                <td>Hope Fuentes</td>
                                <td>Secretary</td>
                                <td>San Francisco</td>
                                <td>41</td>

                            </tr>
                            <tr>
                                <td>Vivian Harrell</td>
                                <td>Financial Controller</td>
                                <td>San Francisco</td>
                                <td>62</td>

                            </tr>
                            <tr>
                                <td>Timothy Mooney</td>
                                <td>Office Manager</td>
                                <td>London</td>
                                <td>37</td>

                            </tr>
                            <tr>
                                <td>Jackson Bradshaw</td>
                                <td>Director</td>
                                <td>New York</td>
                                <td>65</td>

                            </tr>
                            <tr>
                                <td>Olivia Liang</td>
                                <td>Support Engineer</td>
                                <td>Singapore</td>
                                <td>64</td>

                            </tr>
                            <tr>
                                <td>Bruno Nash</td>
                                <td>Software Engineer</td>
                                <td>London</td>
                                <td>38</td>

                            </tr>
                            <tr>
                                <td>Sakura Yamamoto</td>
                                <td>Support Engineer</td>
                                <td>Tokyo</td>
                                <td>37</td>

                            </tr>
                            <tr>
                                <td>Thor Walton</td>
                                <td>Developer</td>
                                <td>New York</td>
                                <td>61</td>

                            </tr>
                            <tr>
                                <td>Finn Camacho</td>
                                <td>Support Engineer</td>
                                <td>San Francisco</td>
                                <td>47</td>

                            </tr>
                            <tr>
                                <td>Serge Baldwin</td>
                                <td>Data Coordinator</td>
                                <td>Singapore</td>
                                <td>64</td>

                            </tr>
                            <tr>
                                <td>Zenaida Frank</td>
                                <td>Software Engineer</td>
                                <td>New York</td>
                                <td>63</td>

                            </tr>
                            <tr>
                                <td>Zorita Serrano</td>
                                <td>Software Engineer</td>
                                <td>San Francisco</td>
                                <td>56</td>

                            </tr>
                            <tr>
                                <td>Jennifer Acosta</td>
                                <td>Junior Javascript Developer</td>
                                <td>Edinburgh</td>
                                <td>43</td>

                            </tr>
                            <tr>
                                <td>Cara Stevens</td>
                                <td>Sales Assistant</td>
                                <td>New York</td>
                                <td>46</td>

                            </tr>
                            <tr>
                                <td>Hermione Butler</td>
                                <td>Regional Director</td>
                                <td>London</td>
                                <td>47</td>

                            </tr>
                            <tr>
                                <td>Lael Greer</td>
                                <td>Systems Administrator</td>
                                <td>London</td>
                                <td>21</td>

                            </tr>
                            <tr>
                                <td>Jonas Alexander</td>
                                <td>Developer</td>
                                <td>San Francisco</td>
                                <td>30</td>

                            </tr>
                            <tr>
                                <td>Shad Decker</td>
                                <td>Regional Director</td>
                                <td>Edinburgh</td>
                                <td>51</td>

                            </tr>
                            <tr>
                                <td>Michael Bruce</td>
                                <td>Javascript Developer</td>
                                <td>Singapore</td>
                                <td>29</td>

                            </tr>
                            <tr>
                                <td>Donna Snider</td>
                                <td>Customer Support</td>
                                <td>New York</td>
                                <td>27</td>

                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </main>
        <footer class="container mt-4">
            <img class="float-end" src="img/logo.png" alt="" width="90">
            <h1>ALGODA</h1>
        </footer>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
<script>window.addEventListener('DOMContentLoaded', event => {

    // Toggle the side navigation
    const sidebarToggle = document.body.querySelector('#sidebarToggle');
    if (sidebarToggle) {
        // Uncomment Below to persist sidebar toggle between refreshes
        // if (localStorage.getItem('sb|sidebar-toggle') === 'true') {
        //     document.body.classList.toggle('sb-sidenav-toggled');
        // }
        sidebarToggle.addEventListener('click', event => {
            event.preventDefault();
            document.body.classList.toggle('sb-sidenav-toggled');
            localStorage.setItem('sb|sidebar-toggle', document.body.classList.contains('sb-sidenav-toggled'));
        });
    }

});</script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
        crossorigin="anonymous"></script>
<script>
    window.addEventListener('DOMContentLoaded', event => {
        // Simple-DataTables
        // https://github.com/fiduswriter/Simple-DataTables/wiki

        const datatablesSimple = document.getElementById('datatablesSimple');
        if (datatablesSimple) {
            new simpleDatatables.DataTable(datatablesSimple);
        }
    });
</script>
</body>
</html>
