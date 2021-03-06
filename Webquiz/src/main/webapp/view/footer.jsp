<%--
  Created by IntelliJ IDEA.
  User: nhacp
  Date: 4/12/2022
  Time: 8:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="footer">
    <!-- Footer -->

    <footer class="bg-dark text-center text-white">
        <!-- Grid container -->
        <div class="container p-4">
            <!-- Section: Social media -->
            <section class="mb-4">
                <!-- Facebook -->
                <a class="btn btn-outline-light btn-floating m-1" href="" role="button"
                ><i class="fab fa-facebook-f"></i
                ></a>

                <!-- Twitter -->
                <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
                ><i class="fab fa-twitter"></i
                ></a>

                <!-- Google -->
                <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
                ><i class="fab fa-google"></i
                ></a>

                <!-- Instagram -->
                <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
                ><i class="fab fa-instagram"></i
                ></a>

                <!-- Linkedin -->
                <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
                ><i class="fab fa-linkedin-in"></i
                ></a>

                <!-- Github -->
                <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
                ><i class="fab fa-github"></i
                ></a>
            </section>
            <!-- Section: Social media -->
            <!-- Section: Links -->
            <section class="">
                <!--Grid row-->
                <div class="row">
                    <!--Grid column-->
                    <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                        <h5 class="text-uppercase">THI THPT QG</h5>

                        <ul class="list-unstyled mb-0">
                            <li>
                                <a href="#!" class="text-white">TO??N-V??N-ANH</a>
                            </li>
                            <li>
                                <a href="#!" class="text-white">L??-H??A-SINH</a>
                            </li>
                            <li>
                                <a href="#!" class="text-white">S???-?????A-C??NG D??N</a>
                            </li>

                        </ul>
                    </div>
                    <!--Grid column-->

                    <!--Grid column-->
                    <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                        <h5 class="text-uppercase">????? KI???M TRA</h5>

                        <ul class="list-unstyled mb-0">
                            <li>
                                <a href="#!" class="text-white">????? THI HK1,HK2</a>
                            </li>
                            <li>
                                <a href="#!" class="text-white">KI???M TRA 1 TI???T</a>
                            </li>
                            <li>
                                <a href="#!" class="text-white">KI???M TRA 15 PH??T</a>
                            </li>

                        </ul>
                    </div>
                    <!--Grid column-->

                    <!--Grid column-->
                    <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                        <h5 class="text-uppercase">IT TEST</h5>

                        <ul class="list-unstyled mb-0">
                            <li>
                                <a href="#!" class="text-white">JAVA</a>
                            </li>
                            <li>
                                <a href="#!" class="text-white">C++</a>
                            </li>
                            <li>
                                <a href="#!" class="text-white">C?? S??? D??? LI???U</a>
                            </li>

                        </ul>
                    </div>
                    <!--Grid column-->

                    <!--Grid column-->
                    <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                        <h5 class="text-uppercase">H?????NG NGHI???P</h5>

                        <ul class="list-unstyled mb-0">
                            <li>
                                <a href="#!" class="text-white">B???NG L??I XE M??Y</a>
                            </li>
                            <li>
                                <a href="#!" class="text-white">B??I L??I ?? T??</a>
                            </li>
                            <li>
                                <a href="#!" class="text-white">THI C??NG VI??N CH???C</a>
                            </li>

                        </ul>
                    </div>
                    <!--Grid column-->
                </div>
                <!--Grid row-->
            </section>
            <!-- Section: Links -->
        </div>
        <!-- Grid container -->
        <!-- Copyright -->
        <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
            ?? 2022 Copyright:
            <a class="text-white" href="https://mdbootstrap.com/">Nh??m 2</a>
        </div>
    </footer>

    <script>
        var header = document.querySelector('.navbar__item-list');
        var origOffsetY = header.offsetTop;
        function onScroll(e) {
            window.scrollY >= origOffsetY ? header.classList.add('sticky') :
                header.classList.remove('sticky');
        }
        document.addEventListener('scroll', onScroll);
    </script>
</div>