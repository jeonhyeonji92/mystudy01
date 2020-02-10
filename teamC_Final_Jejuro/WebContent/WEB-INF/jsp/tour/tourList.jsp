<%@include file="../main/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section class="post-wrapper-top">
    <div class="container">
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <ul class="breadcrumb">
          <li><a href="home">Home</a></li>
          <li>������</li>
        </ul>
        <h2>������</h2>
      </div>
    </div>
  </section>
  <!-- end post-wrapper-top -->
<div style="float: right;">
	<h3 style="display: inline;font-size: 20px;color: orange;padding-top: 50px;padding-left: 20px;">�ֱ� �� ������</h3><br>
	<c:forEach var="e" items="${rvlist}">
	<p>${e.rvttitle}</p>
	<a href="${e.rvturl}"><img src="resources/img/${e.rvtImg}" style="width:200px;height: 200px;"></a><br>
	</c:forEach>
	</div>
  <section class="section1">
    <div class="container clearfix">
    
    
      <div class=" col-lg-12 col-md-12 col-sm-12 clearfix">

        <div class="divider"></div>

        <nav class="portfolio-filter clearfix">
          <ul>
            <li><a href="#" class="dmbutton2" data-filter="*">����</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".a">�ڿ�</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".b">��ȭ</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".c">�׸�</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".d">�÷�</a></li>
          </ul>
        </nav>
        
        
		<form>
        <div class="portfolio-centered">
          <div class="recentitems portfolio">
          
          
				 <c:forEach var="e" items="${list }">
         <!--  ����
         <div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 ����� �¸� ">   -->

            <div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 ${e.tType}">
              <div class="he-wrap tpl6 market-item">
                <img src="resources/img/tourspot/${e.tTopImg}"style="width: 500px; height: 300px;">
                <div class="he-view">
                  <div class="bg a0" data-animate="fadeIn">
                    <h3 class="big a1" data-animate="fadeInDown">${e.tName}</h3>
                    <a data-rel="prettyPhoto" href="" class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a>
                    <!-- �Ƹ� �̰ŷ� �̵��ϴ� �� -->
                    <a href="tourdetail" class="dmbutton a2" data-animate="bounceInRight"><i class="fa fa-link"></i></a>
                    <div class="portfolio_category text-center a2" data-animate="fadeIn">
                    </div>
                    <!-- portfolio_category -->
                  </div>
                  <!-- he bg -->
                </div>
                <!-- he view -->
              </div>
              <!-- he wrap -->
              <h3 class="title">��ȭ��ȣ : ${e.tTel}</h3>
              <p> �ּ� : ${e.tAddr1}</p>
            </div>
            
                 </c:forEach> 
            
            
            
            
       <!--      
             end col-4

            <div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 culture">
              <div class="he-wrap tpl6 market-item">
                <img src="resources/img/portfolio_02.jpg" alt="">
                <div class="he-view">
                  <div class="bg a0" data-animate="fadeIn">
                    <h3 class="big a1" data-animate="fadeInDown">��ȭ ������ �̸�</h3>
                    <a data-rel="prettyPhoto" href="resources/img/portfolio_02.jpg" class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a>
                    <a href="tourdetail" class="dmbutton a2" data-animate="bounceInRight"><i class="fa fa-link"></i></a>
                    <div class="portfolio_category text-center a2" data-animate="fadeIn">
                    </div>
                    portfolio_category
                  </div>
                  he bg
                </div>
                he view
              </div>
              he wrap
              <h3 class="title">Project Name - 2</h3>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy..</p>
            </div>
            end col-4
            
            
            
            

            <div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 theme">
              <div class="he-wrap tpl6 market-item">
                <img src="resources/img/portfolio_03.jpg" alt="">
                <div class="he-view">
                  <div class="bg a0" data-animate="fadeIn">
                    <h3 class="big a1" data-animate="fadeInDown">�׸� ������ �̸�</h3>
                    <a data-rel="prettyPhoto" href="resources/img/portfolio_03.jpg" class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a>
                    <a href="tourdetail" class="dmbutton a2" data-animate="bounceInRight"><i class="fa fa-link"></i></a>
                    <div class="portfolio_category text-center a2" data-animate="fadeIn">
                    </div>
                    portfolio_category
                  </div>
                  he bg
                </div>
                he view
              </div>
              he wrap
              <h3 class="title">Project Name - 3</h3>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy..</p>
            </div>
            end col-4
            
            
            
            

            <div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 olle">
              <div class="he-wrap tpl6 market-item">
                <img src="resources/img/portfolio_04.jpg" alt="">
                <div class="he-view">
                  <div class="bg a0" data-animate="fadeIn">
                    <h3 class="big a1" data-animate="fadeInDown">�÷� ������ �̸�</h3>
                    <a data-rel="prettyPhoto" href="resources/img/portfolio_04.jpg" class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a>
                    <a href="#" class="dmbutton a2" data-animate="bounceInRight"><i class="fa fa-link"></i></a>
                    <div class="portfolio_category text-center a2" data-animate="fadeIn">
                    </div>
                    portfolio_category
                  </div>
                  he bg
                </div>
                he view
              </div>
              he wrap
              <h3 class="title">Project Name - 4</h3>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy..</p>
            </div>
            
            
            ������ʹ� ���߿� ����
            
            
            end col-12

            <div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 nature">
              <div class="he-wrap tpl6 market-item">
                <img src="resources/img/portfolio_05.jpg" alt="">
                <div class="he-view">
                  <div class="bg a0" data-animate="fadeIn">
                    <h3 class="big a1" data-animate="fadeInDown">�ڿ� ������ �̸�</h3>
                    <a data-rel="prettyPhoto" href="resources/img/portfolio_05.jpg" class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a>
                    <a href="#" class="dmbutton a2" data-animate="bounceInRight"><i class="fa fa-link"></i></a>
                    <div class="portfolio_category text-center a2" data-animate="fadeIn">
                    </div>
                    portfolio_category
                  </div>
                  he bg
                </div>
                he view
              </div>
              he wrap
              <h3 class="title">Project Name - 5</h3>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy..</p>
            </div>
            end col-12
            
            
            
            
            

            <div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 culture">
              <div class="he-wrap tpl6 market-item">
                <img src="resources/img/portfolio_06.jpg" alt="">
                <div class="he-view">
                  <div class="bg a0" data-animate="fadeIn">
                    <h3 class="big a1" data-animate="fadeInDown">��ȭ ������ �̸�</h3>
                    <a data-rel="prettyPhoto" href="resources/img/portfolio_06.jpg" class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a>
                    <a href="#" class="dmbutton a2" data-animate="bounceInRight"><i class="fa fa-link"></i></a>
                    <div class="portfolio_category text-center a2" data-animate="fadeIn">
                    </div>
                    portfolio_category
                  </div>
                  he bg
                </div>
                he view
              </div>
              he wrap
              <h3 class="title">Project Name - 6</h3>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy..</p>
            </div>
            end col-12
            
            
            
            
            <div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 theme">
              <div class="he-wrap tpl6 market-item">
                <img src="resources/img/portfolio_06.jpg" alt="">
                <div class="he-view">
                  <div class="bg a0" data-animate="fadeIn">
                    <h3 class="big a1" data-animate="fadeInDown">�׸� ������ �̸�</h3>
                    <a data-rel="prettyPhoto" href="resources/img/portfolio_06.jpg" class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a>
                    <a href="#" class="dmbutton a2" data-animate="bounceInRight"><i class="fa fa-link"></i></a>
                    <div class="portfolio_category text-center a2" data-animate="fadeIn">
                    </div>
                    portfolio_category
                  </div>
                  he bg
                </div>
                he view
              </div>
              he wrap
              <h3 class="title">Project Name - 6</h3>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy..</p>
            </div>
            end col-12
            
            
            
            
            
            <div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 olle">
              <div class="he-wrap tpl6 market-item">
                <img src="resources/img/portfolio_06.jpg" alt="">
                <div class="he-view">
                  <div class="bg a0" data-animate="fadeIn">
                    <h3 class="big a1" data-animate="fadeInDown">�÷� ������ �̸�</h3>
                    <a data-rel="prettyPhoto" href="resources/img/portfolio_06.jpg" class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a>
                    <a href="#" class="dmbutton a2" data-animate="bounceInRight"><i class="fa fa-link"></i></a>
                    <div class="portfolio_category text-center a2" data-animate="fadeIn">
                    </div>
                    portfolio_category
                  </div>
                  he bg
                </div>
                he view
              </div>
              he wrap
              <h3 class="title">Project Name - 6</h3>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy..</p>
            </div>
            
 -->
            
            

          </div>
          <!-- portfolio -->
        </div>
        </form>
        
        
        <!-- portfolio container -->
        <div class="divider"></div>
      </div>
      </div>
      <!-- end container -->
  </section>
  <!-- end section -->

<%@include file="../main/footer.jsp"%>