<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="vi">
<head>
    <link rel="stylesheet" href="/exam/exam.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <jsp:include page="/view/head.jsp"/>
    <title>Đề thi minh họa tốt nghiệp THPT năm 2022 môn Toán - Bộ Giáo Dục và Đào Tạo</title>
</head>

<body oncopy="return false" oncut="return false" onpaste="return false">
<jsp:include page="/view/header.jsp"/>
<div class="wrapper">
    <div class="main-content">
        <div class="breadcrumb">
            <div class="container">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="">Trang chủ</a></li>
                        <li class="breadcrumb-item"><a href="">Thi THPTQG </a></li>
                        <li class="breadcrumb-item"><a href="">Toán</a></li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
</div>
<div class="content-two-columns">
    <div class="container">
        <div class="row">
            <div class="cot-trai">
                <div class="skill-test-lists common-test-detail">
                    <div class="col-12 col-lg-12 col-sm-12">
                        <div class="row">
                            <div class="d9Box part-item detail">
                                <h1 class="title22Bold ">${exam.examName}</h1>
                                <p>Bộ Giáo Dục và Đào Tạo</p>
                                <h2 style="text-align: center"> Kết quả bài làm</h2>
                                <div class="detail-question">
                                    <div class="num-question col" style="text-align: center"><span><i
                                            class="fa fa-check-square"></i> ${point}/${examQuestion.total * 10} Điểm</span>
                                    </div>
                                    <div class="num-minutes col" style="text-align: center"><span><i
                                            class="fa fa-clock-o"
                                            aria-hidden="true"></i>${exam.allowedTime} phút</span>
                                    </div>
                                </div>
                                <div class="exam-content">
                                    <ul>
                                        <c:forEach items="${listQuestion}" var="question" varStatus="loop">
                                            <input type="hidden" name="question${question.question_id}"
                                                   value="${question.correct_answer}">

                                            <li>
                                                <h4>Câu ${loop.index + 1}:</h4>
                                                <h4><p>${question.description}</p></h4>

                                                <%--   Kiểm tra phải câu mình chọn không câu A  --%>
                                                <c:if test="${questionMyCheck[loop.index] eq question.answer1}">
                                                    <c:if test="${question.answer1 eq question.correct_answer}">
                                                       <p class=" question_answer checked--true">
                                                           A. ${question.answer1}
                                                           <i class="fa-solid fa-circle-check"></i>
                                                       </p>
                                                    </c:if>
                                                    <c:if test="${question.answer1 != question.correct_answer}">
                                                        <p class="question_answer checked--false">
                                                            A. ${question.answer1}
                                                        </p>
                                                    </c:if>
                                                </c:if>
                                                <c:if test="${questionMyCheck[loop.index] != question.answer1}">
                                                    <c:if test="${question.answer1 eq question.correct_answer}">
                                                        <p class="question_answer">
                                                            A. ${question.answer1}
                                                            <i class="fa-solid fa-circle-check"></i>
                                                        </p>
                                                    </c:if>
                                                    <c:if test="${question.answer1 != question.correct_answer}">
                                                        <p class="question_answer">
                                                            A. ${question.answer1}
                                                        </p>
                                                    </c:if>
                                                </c:if>

                                                    <%--   Kiểm tra phải câu mình chọn không câu B  --%>
                                                <c:if test="${questionMyCheck[loop.index] eq question.answer2}">
                                                    <c:if test="${question.answer2 eq question.correct_answer}">
                                                        <p class="question_answer checked--true">
                                                            B. ${question.answer1}
                                                            <i class="fa-solid fa-circle-check"></i>
                                                        </p>
                                                    </c:if>
                                                    <c:if test="${question.answer2 != question.correct_answer}">
                                                        <p class="question_answer checked--false">
                                                            B. ${question.answer2}
                                                        </p>
                                                    </c:if>
                                                </c:if>
                                                <c:if test="${questionMyCheck[loop.index] != question.answer2}">
                                                    <c:if test="${question.answer2 eq question.correct_answer}">
                                                        <p class="question_answer">
                                                            B. ${question.answer1}
                                                            <i class="fa-solid fa-circle-check"></i>
                                                        </p>
                                                    </c:if>
                                                    <c:if test="${question.answer2 != question.correct_answer}">
                                                        <p class="question_answer">
                                                            B. ${question.answer2}
                                                        </p>
                                                    </c:if>
                                                </c:if>

                                                    <%--   Kiểm tra phải câu mình chọn không câu C  --%>
                                                <c:if test="${questionMyCheck[loop.index] eq question.answer3}">
                                                    <c:if test="${question.answer3 eq question.correct_answer}">
                                                        <p class="question_answer checked--true">
                                                            C. ${question.answer3}
                                                            <i class="fa-solid fa-circle-check"></i>
                                                        </p>
                                                    </c:if>
                                                    <c:if test="${question.answer3 != question.correct_answer}">
                                                        <p class="question_answer my_checked--false">
                                                            C. ${question.answer3}
                                                        </p>
                                                    </c:if>
                                                </c:if>
                                                <c:if test="${questionMyCheck[loop.index] != question.answer3}">
                                                    <c:if test="${question.answer3 eq question.correct_answer}">
                                                        <p class="question_answer">
                                                            C. ${question.answer3}
                                                            <i class="fa-solid fa-circle-check"></i>
                                                        </p>
                                                    </c:if>
                                                    <c:if test="${question.answer3 != question.correct_answer}">
                                                        <p class="question_answer">
                                                            C. ${question.answer3}
                                                        </p>
                                                    </c:if>
                                                </c:if>

                                                    <%--   Kiểm tra phải câu mình chọn không câu D  --%>
                                                <c:if test="${questionMyCheck[loop.index] eq question.answer4}">
                                                    <c:if test="${question.answer4 eq question.correct_answer}">
                                                        <p class="question_answer checked--true">
                                                            D. ${question.answer4}
                                                            <i class="fa-solid fa-circle-check"></i>
                                                        </p>
                                                    </c:if>
                                                    <c:if test="${question.answer4 != question.correct_answer}">
                                                        <p class="question_answer checked--false">
                                                            D. ${question.answer4}
                                                        </p>
                                                    </c:if>
                                                </c:if>
                                                <c:if test="${questionMyCheck[loop.index] != question.answer4}">
                                                    <c:if test="${question.answer4 eq question.correct_answer}">
                                                        <p class="question_answer">
                                                            D. ${question.answer4}
                                                            <i class="fa-solid fa-circle-check"></i>
                                                        </p>
                                                    </c:if>
                                                    <c:if test="${question.answer4 != question.correct_answer}">
                                                        <p class="question_answer">
                                                            D. ${question.answer4}
                                                        </p>
                                                    </c:if>
                                                </c:if>
                                            </li>
                                            <hr width="90%" align="left"/>
                                        </c:forEach>
                                    </ul>
                                    <div class="ml-3 mt-4 btn-group-do-exam-share">
                                        <div>
                                            <a type="button" style="margin-top: 10px; padding: 0 70px" href="/"
                                               class="btn orange f16b h51">Về Trang Chủ</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </section>
</div>


<jsp:include page="/view/footer.jsp"/>
<script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.2/MathJax.js?config=TeX-MML-AM_CHTML">
</script>
</body>
</html>