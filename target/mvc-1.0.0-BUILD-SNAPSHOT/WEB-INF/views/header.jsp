<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>HEADER</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous"/>
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"
            defer></script>
</head>
<body>
<header class="p-3 text-bg-dark">
    <div class="container">
        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
            <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
                <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap">
                    <use xlink:href="#bootstrap"></use>
                </svg>
            </a>

            <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                <li><a href="/index.do" class="nav-link px-2 text-secondary">Home</a></li>
                <li><a href="#" class="nav-link px-2 text-white">Features</a></li>
                <li><a href="#" class="nav-link px-2 text-white">Pricing</a></li>
                <li><a href="#" class="nav-link px-2 text-white">FAQs</a></li>
                <li><a href="#" class="nav-link px-2 text-white">About</a></li>
            </ul>

            <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search">
                <input type="search" class="form-control form-control-dark text-bg-dark" placeholder="Search..."
                       aria-label="Search">
            </form>

            <div class="text-end">
                <c:if test="${member == null}">
                <button type="button" class="btn btn-outline-light me-2"><a href="/member/login.do"
                                                                            style="text-decoration:none;">Login</a>
                </button>
                <button type="button" class="btn btn-warning"><a href="/member/agreement.do"
                                                                 style="text-decoration:none;">Sign-up</a>
                    </c:if>
                    <c:if test="${member != null}">
                    <c:if test="${member.verify == 9}">
                    <button type="button" class="btn btn-outline-light me-2"><a href="/admin/index.do"
                                                                                style="text-decoration:none;">ADMIN</a>
                    </button>
                    </c:if>
                    <button type="button" class="btn btn-outline-light me-2"><a href="/member/logout.do"
                                                                                style="text-decoration:none;">Logout</a>
                    </button>
                    <button type="button" class="btn btn-warning"><a href="/member/agreement.do"
                                                                     style="text-decoration:none;">${member.userName}</a>
                        </c:if>
                    </button>
            </div>
        </div>
    </div>
</header>
</body>
</html>
