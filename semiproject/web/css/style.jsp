<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
/**************** common css start ****************/
@import url("https://fonts.googleapis.com/css?family=Quicksand:300,400,500,600,700&display=swap");
/* line 3, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
body {
  font-family: "Quicksand", sans-serif;
  padding: 0;
  margin: 0;
  font-size: 14px;
}

/* line 9, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
.message_submit_form:focus {
  outline: none;
}

/* line 12, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
section {
  overflow: hidden;
}

/* line 15, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
input:hover, input:focus {
  outline: none !important;
}

/* line 18, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
.padding_bottom {
  padding-bottom: 130px;
}

@media (max-width: 991px) {
  /* line 18, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
  .padding_bottom {
    padding-bottom: 70px;
  }
}

@media only screen and (min-width: 992px) and (max-width: 1200px) {
  /* line 18, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
  .padding_bottom {
    padding-bottom: 80px;
  }
}

/* line 27, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
.padding_top {
  padding-top: 130px;
}

@media (max-width: 991px) {
  /* line 27, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
  .padding_top {
    padding-top: 70px;
  }
}

@media only screen and (min-width: 992px) and (max-width: 1200px) {
  /* line 27, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
  .padding_top {
    padding-top: 80px;
  }
}

/* line 36, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
.section_padding {
  padding: 130px 0px;
}

@media (max-width: 991px) {
  /* line 36, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
  .section_padding {
    padding: 70px 0px;
  }
}

@media only screen and (min-width: 992px) and (max-width: 1200px) {
  /* line 36, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
  .section_padding {
    padding: 80px 0px;
  }
}

/* line 46, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
a {
  text-decoration: none;
  -webkit-transition: 0.5s;
  transition: 0.5s;
}

/* line 49, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
a:hover, a :hover {
  color: #53C9BB;
  text-decoration: none;
  -webkit-transition: 0.5s;
  transition: 0.5s;
}

/* line 56, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
h1, h2, h3, h4, h5, h6 {
  color: #082B49;
  font-family: "Quicksand", sans-serif;
  font-weight: 400;
}

/* line 61, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
p {
  color: #4D4D4D;
  font-family: "Quicksand", sans-serif;
  line-height: 28px;
  font-size: 14px;
  margin-bottom: 0px;
}

/* line 69, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
h2 {
  font-size: 36px;
  line-height: 28px;
  color: #082B49;
  font-weight: 700;
}

@media (max-width: 576px) {
  /* line 69, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
  h2 {
    font-size: 22px;
    line-height: 25px;
  }
}

@media only screen and (min-width: 576px) and (max-width: 767px) {
  /* line 69, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
  h2 {
    font-size: 24px;
    line-height: 25px;
  }
}

/* line 85, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
h3 {
  font-size: 24px;
  line-height: 25px;
}

@media (max-width: 576px) {
  /* line 85, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
  h3 {
    font-size: 20px;
  }
}

/* line 95, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
.blog_right_sidebar .widget_title {
  font-size: 20px;
  margin-bottom: 40px;
  font-style: inherit;
  font-weight: 600;
  color: #2a2a2a;
}

/* line 102, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
h5 {
  font-size: 18px;
  line-height: 22px;
}

/* line 107, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
img {
  max-width: 100%;
}

/* line 110, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
a:focus, .button:focus, button:focus, .btn:focus {
  text-decoration: none;
  outline: none;
  box-shadow: none;
  -webkit-transition: 1s;
  transition: 1s;
}

/* line 117, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
.section_tittle {
  margin-bottom: 80px;
}

@media (max-width: 576px) {
  /* line 117, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
  .section_tittle {
    margin-bottom: 30px;
  }
}

@media only screen and (min-width: 576px) and (max-width: 767px) {
  /* line 117, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
  .section_tittle {
    margin-bottom: 30px;
  }
}

@media only screen and (min-width: 768px) and (max-width: 991px) {
  /* line 117, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
  .section_tittle {
    font-size: 30px;
    line-height: 40px;
  }
}

/* line 132, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
.section_tittle h2 {
  font-size: 46px;
  color: #082B49;
  line-height: 58px;
  font-weight: 400;
  margin: 25px 0 18px;
}

@media (max-width: 991px) {
  /* line 132, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
  .section_tittle h2 {
    font-size: 25px;
    line-height: 35px;
    margin: 15px 0 18px;
  }
}

/* line 151, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
ul {
  list-style: none;
  margin: 0;
  padding: 0;
}

/* line 156, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
.mb_110 {
  margin-bottom: 110px;
}

@media (max-width: 576px) {
  /* line 156, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
  .mb_110 {
    margin-bottom: 220px;
  }
}

/* line 163, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
.mt_130 {
  margin-top: 130px;
}

@media (max-width: 576px) {
  /* line 163, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
  .mt_130 {
    margin-top: 70px;
  }
}

@media only screen and (min-width: 576px) and (max-width: 767px) {
  /* line 163, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
  .mt_130 {
    margin-top: 70px;
  }
}

@media only screen and (min-width: 768px) and (max-width: 991px) {
  /* line 163, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
  .mt_130 {
    margin-top: 70px;
  }
}

@media only screen and (min-width: 992px) and (max-width: 1200px) {
  /* line 163, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
  .mt_130 {
    margin-top: 70px;
  }
}

/* line 178, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
.mb_130 {
  margin-bottom: 130px;
}

@media (max-width: 576px) {
  /* line 178, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
  .mb_130 {
    margin-bottom: 70px;
  }
}

@media only screen and (min-width: 576px) and (max-width: 767px) {
  /* line 178, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
  .mb_130 {
    margin-bottom: 70px;
  }
}

@media only screen and (min-width: 768px) and (max-width: 991px) {
  /* line 178, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
  .mb_130 {
    margin-bottom: 70px;
  }
}

@media only screen and (min-width: 992px) and (max-width: 1200px) {
  /* line 178, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
  .mb_130 {
    margin-bottom: 70px;
  }
}

/* line 193, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
.padding_less_40 {
  margin-bottom: -50px;
}

/* line 196, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
.z_index {
  z-index: 9 !important;
  position: relative;
}

/* line 201, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_common.scss */
.blog_item_date {
  background-color: #53C9BB !important;
}

/**************** common css end ****************/
/* Main Button Area css
============================================================================================ */
/* line 3, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_button.scss */
.submit_btn {
  width: auto;
  display: inline-block;
  background: #fff;
  padding: 0px 50px;
  color: #fff;
  font-size: 13px;
  font-weight: 500;
  line-height: 50px;
  border-radius: 5px;
  outline: none !important;
  box-shadow: none !important;
  text-align: center;
  border: 1px solid #fdcb9e;
  cursor: pointer;
  -webkit-transition: 0.5s;
  transition: 0.5s;
  border-radius: 50px;
}

/* line 20, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_button.scss */
.submit_btn:hover {
  background: transparent;
}

/* line 25, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_button.scss */
.btn_1 {
  display: inline-block;
  padding: 15px 31px;
  border: 2px solid transparent;
  background-color: #53C9BB;
  font-size: 14px;
  color: #fff;
  -webkit-transition: 0.5s;
  transition: 0.5s;
  text-transform: uppercase;
  border-radius: 50px;
  line-height: 16px;
}

/* line 36, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_button.scss */
.btn_1:hover {
  background-color: #FF5B5B;
  color: #fff;
}

/*=================== custom button rule start ====================*/
/* line 44, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_button.scss */
.button {
  display: inline-block;
  border: 1px solid transparent;
  font-size: 15px;
  font-weight: 500;
  padding: 12px 54px;
  border-radius: 4px;
  color: #fff;
  border: 1px solid #53C9BB;
  text-transform: uppercase;
  background-color: #53C9BB;
  cursor: pointer;
  -webkit-transition: 0.5s;
  transition: 0.5s;
}

@media (max-width: 767px) {
  /* line 44, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_button.scss */
  .button {
    font-size: 13px;
    padding: 9px 24px;
  }
}

/* line 63, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_button.scss */
.button:hover {
  color: #fff;
}

/* line 68, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_button.scss */
.button-link {
  letter-spacing: 0;
  color: #3b1d82;
  border: 0;
  padding: 0;
}

/* line 74, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_button.scss */
.button-link:hover {
  background: transparent;
  color: #3b1d82;
}

/* line 80, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_button.scss */
.button-header {
  color: #fff;
  border-color: #fdcb9e;
}

/* line 84, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_button.scss */
.button-header:hover {
  background: #b8024c;
  color: #fff;
}

/* line 90, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_button.scss */
.button-contactForm {
  color: #fff;
  border-color: #53C9BB;
  padding: 12px 25px;
}

/* End Main Button Area css
============================================================================================ */
/* Start Blog Area css
============================================================================================ */
/* line 6, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.latest-blog-area .area-heading {
  margin-bottom: 70px;
}

/* line 11, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-blog {
  overflow: hidden;
  margin-bottom: 30px;
}

/* line 14, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-blog:hover {
  box-shadow: 0px 10px 20px 0px rgba(42, 34, 123, 0.1);
}

/* line 17, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-blog .thumb {
  overflow: hidden;
  position: relative;
}

/* line 20, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-blog .thumb:after {
  content: '';
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  background: #000;
  opacity: 0;
  -webkit-transition: 0.5s;
  transition: 0.5s;
}

/* line 33, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-blog h4 {
  border-bottom: 1px solid #dfdfdf;
  padding-bottom: 34px;
  margin-bottom: 25px;
}

/* line 39, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-blog a {
  font-size: 20px;
  font-weight: 600;
}

/* line 47, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-blog .date {
  color: #666666;
  text-align: left;
  display: inline-block;
  font-size: 13px;
  font-weight: 300;
}

/* line 54, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-blog .tag {
  text-align: left;
  display: inline-block;
  float: left;
  font-size: 13px;
  font-weight: 300;
  margin-right: 22px;
  position: relative;
}

/* line 63, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-blog .tag:after {
  content: '';
  position: absolute;
  width: 1px;
  height: 10px;
  background: #acacac;
  right: -12px;
  top: 7px;
}

@media (max-width: 1199px) {
  /* line 54, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
  .single-blog .tag {
    margin-right: 8px;
  }
  /* line 75, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
  .single-blog .tag:after {
    display: none;
  }
}

/* line 80, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-blog .likes {
  margin-right: 16px;
}

@media (max-width: 800px) {
  /* line 11, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
  .single-blog {
    margin-bottom: 30px;
  }
}

/* line 86, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-blog .single-blog-content {
  padding: 30px;
}

/* line 89, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-blog .single-blog-content .meta-bottom p {
  font-size: 13px;
  font-weight: 300;
}

/* line 93, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-blog .single-blog-content .meta-bottom i {
  color: #fdcb9e;
  font-size: 13px;
  margin-right: 7px;
}

@media (max-width: 1199px) {
  /* line 86, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
  .single-blog .single-blog-content {
    padding: 15px;
  }
}

/* line 105, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-blog:hover .thumb:after {
  opacity: .7;
  -webkit-transition: 0.5s;
  transition: 0.5s;
}

@media (max-width: 1199px) {
  /* line 112, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
  .single-blog h4 {
    transition: all 300ms linear 0s;
    border-bottom: 1px solid #dfdfdf;
    padding-bottom: 14px;
    margin-bottom: 12px;
  }
  /* line 117, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
  .single-blog h4 a {
    font-size: 18px;
  }
}

/* line 125, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.full_image.single-blog {
  position: relative;
}

/* line 127, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.full_image.single-blog .single-blog-content {
  position: absolute;
  left: 35px;
  bottom: 0;
  opacity: 0;
  visibility: hidden;
  -webkit-transition: 0.5s;
  transition: 0.5s;
}

@media (min-width: 992px) {
  /* line 127, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
  .full_image.single-blog .single-blog-content {
    bottom: 100px;
  }
}

/* line 144, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.full_image.single-blog h4 {
  -webkit-transition: 0.5s;
  transition: 0.5s;
  border-bottom: none;
  padding-bottom: 5px;
}

/* line 149, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.full_image.single-blog a {
  font-size: 20px;
  font-weight: 600;
}

/* line 157, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.full_image.single-blog .date {
  color: #fff;
}

/* line 161, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.full_image.single-blog:hover .single-blog-content {
  opacity: 1;
  visibility: visible;
  -webkit-transition: 0.5s;
  transition: 0.5s;
}

/* End Blog Area css
============================================================================================ */
/* Latest Blog Area css
============================================================================================ */
/* line 187, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.l_blog_item .l_blog_text .date {
  margin-top: 24px;
  margin-bottom: 15px;
}

/* line 190, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.l_blog_item .l_blog_text .date a {
  font-size: 12px;
}

/* line 195, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.l_blog_item .l_blog_text h4 {
  font-size: 18px;
  border-bottom: 1px solid #eeeeee;
  margin-bottom: 0px;
  padding-bottom: 20px;
  -webkit-transition: 0.5s;
  transition: 0.5s;
}

/* line 206, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.l_blog_item .l_blog_text p {
  margin-bottom: 0px;
  padding-top: 20px;
}

/* End Latest Blog Area css
============================================================================================ */
/* Causes Area css
============================================================================================ */
/* line 221, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.causes_slider .owl-dots {
  text-align: center;
  margin-top: 80px;
}

/* line 224, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.causes_slider .owl-dots .owl-dot {
  height: 14px;
  width: 14px;
  background: #eeeeee;
  display: inline-block;
  margin-right: 7px;
}

/* line 230, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.causes_slider .owl-dots .owl-dot:last-child {
  margin-right: 0px;
}

/* line 239, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.causes_item {
  background: #fff;
}

/* line 241, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.causes_item .causes_img {
  position: relative;
}

/* line 243, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.causes_item .causes_img .c_parcent {
  position: absolute;
  bottom: 0px;
  width: 100%;
  left: 0px;
  height: 3px;
  background: rgba(255, 255, 255, 0.5);
}

/* line 250, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.causes_item .causes_img .c_parcent span {
  width: 70%;
  height: 3px;
  position: absolute;
  left: 0px;
  bottom: 0px;
}

/* line 257, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.causes_item .causes_img .c_parcent span:before {
  content: "75%";
  position: absolute;
  right: -10px;
  bottom: 0px;
  color: #fff;
  padding: 0px 5px;
}

/* line 269, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.causes_item .causes_text {
  padding: 30px 35px 40px 30px;
}

/* line 271, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.causes_item .causes_text h4 {
  font-size: 18px;
  font-weight: 600;
  margin-bottom: 15px;
  cursor: pointer;
}

/* line 282, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.causes_item .causes_text p {
  font-size: 14px;
  line-height: 24px;
  font-weight: 300;
  margin-bottom: 0px;
}

/* line 291, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.causes_item .causes_bottom a {
  width: 50%;
  border: 1px solid;
  text-align: center;
  float: left;
  line-height: 50px;
  color: #fff;
  font-size: 14px;
  font-weight: 500;
}

/* line 302, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.causes_item .causes_bottom a + a {
  border-color: #eeeeee;
  background: #fff;
  font-size: 14px;
}

/* End Causes Area css
============================================================================================ */
/*================= latest_blog_area css =============*/
/* line 317, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.latest_blog_area {
  background: #f9f9ff;
}

/* line 320, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-recent-blog-post {
  margin-bottom: 30px;
}

/* line 322, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-recent-blog-post .thumb {
  overflow: hidden;
}

/* line 324, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-recent-blog-post .thumb img {
  transition: all 0.7s linear;
}

/* line 328, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-recent-blog-post .details {
  padding-top: 30px;
}

/* line 330, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-recent-blog-post .details .sec_h4 {
  line-height: 24px;
  padding: 10px 0px 13px;
  transition: all 0.3s linear;
}

/* line 339, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-recent-blog-post .date {
  font-size: 14px;
  line-height: 24px;
  font-weight: 400;
}

/* line 345, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-recent-blog-post:hover img {
  transform: scale(1.23) rotate(10deg);
}

/* line 351, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.tags .tag_btn {
  font-size: 12px;
  font-weight: 500;
  line-height: 20px;
  border: 1px solid #eeeeee;
  display: inline-block;
  padding: 1px 18px;
  text-align: center;
}

/* line 363, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.tags .tag_btn + .tag_btn {
  margin-left: 2px;
}

/*========= blog_categorie_area css ===========*/
/* line 370, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog_categorie_area {
  padding-top: 30px;
  padding-bottom: 30px;
}

@media (min-width: 900px) {
  /* line 370, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
  .blog_categorie_area {
    padding-top: 80px;
    padding-bottom: 80px;
  }
}

@media (min-width: 1100px) {
  /* line 370, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
  .blog_categorie_area {
    padding-top: 120px;
    padding-bottom: 120px;
  }
}

/* line 385, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.categories_post {
  position: relative;
  text-align: center;
  cursor: pointer;
}

/* line 389, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.categories_post img {
  max-width: 100%;
}

/* line 392, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.categories_post .categories_details {
  position: absolute;
  top: 20px;
  left: 20px;
  right: 20px;
  bottom: 20px;
  background: rgba(34, 34, 34, 0.75);
  color: #fff;
  transition: all 0.3s linear;
  display: flex;
  align-items: center;
  justify-content: center;
}

/* line 404, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.categories_post .categories_details h5 {
  margin-bottom: 0px;
  font-size: 18px;
  line-height: 26px;
  text-transform: uppercase;
  color: #fff;
  position: relative;
}

/* line 421, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.categories_post .categories_details p {
  font-weight: 300;
  font-size: 14px;
  line-height: 26px;
  margin-bottom: 0px;
}

/* line 427, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.categories_post .categories_details .border_line {
  margin: 10px 0px;
  background: #fff;
  width: 100%;
  height: 1px;
}

/* line 435, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.categories_post:hover .categories_details {
  background: rgba(222, 99, 32, 0.85);
}

/*============ blog_left_sidebar css ==============*/
/* line 450, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog_item {
  margin-bottom: 50px;
}

/* line 453, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog_details {
  padding: 30px 0 20px 10px;
  box-shadow: 0px 10px 20px 0px rgba(221, 221, 221, 0.3);
}

@media (min-width: 768px) {
  /* line 453, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
  .blog_details {
    padding: 60px 30px 35px 35px;
  }
}

/* line 461, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog_details p {
  margin-bottom: 30px;
}

/* line 464, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog_details a {
  color: #ff8b23;
}

/* line 466, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog_details a:hover {
  color: #53C9BB;
}

/* line 470, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog_details h2 {
  font-size: 18px;
  font-weight: 600;
  margin-bottom: 8px;
}

@media (min-width: 768px) {
  /* line 470, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
  .blog_details h2 {
    font-size: 24px;
    margin-bottom: 15px;
  }
}

/* line 483, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog-info-link li {
  float: left;
  font-size: 14px;
}

/* line 487, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog-info-link li a {
  color: #999999;
}

/* line 491, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog-info-link li i, .blog-info-link li span {
  font-size: 13px;
  margin-right: 5px;
}

/* line 496, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog-info-link li::after {
  content: "|";
  padding-left: 10px;
  padding-right: 10px;
}

/* line 502, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog-info-link li:last-child::after {
  display: none;
}

/* line 507, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog-info-link::after {
  content: "";
  display: block;
  clear: both;
  display: table;
}

/* line 514, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog_item_img {
  position: relative;
}

/* line 517, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog_item_img .blog_item_date {
  position: absolute;
  bottom: -10px;
  left: 10px;
  display: block;
  color: #fff;
  background: #4D4D4D;
  padding: 8px 15px;
  border-radius: 5px;
}

@media (min-width: 768px) {
  /* line 517, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
  .blog_item_img .blog_item_date {
    bottom: -20px;
    left: 40px;
    padding: 13px 30px;
  }
}

/* line 533, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog_item_img .blog_item_date h3 {
  font-size: 22px;
  font-weight: 600;
  color: #fff;
  margin-bottom: 0;
  line-height: 1.2;
}

@media (min-width: 768px) {
  /* line 533, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
  .blog_item_img .blog_item_date h3 {
    font-size: 30px;
  }
}

/* line 545, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog_item_img .blog_item_date p {
  font-size: 18px;
  margin-bottom: 0;
  color: #fff;
}

@media (min-width: 768px) {
  /* line 545, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
  .blog_item_img .blog_item_date p {
    font-size: 18px;
  }
}

/* line 563, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog_right_sidebar .widget_title {
  font-size: 20px;
  margin-bottom: 40px;
}

/* line 568, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog_right_sidebar .widget_title::after {
  content: "";
  display: block;
  padding-top: 15px;
  border-bottom: 1px solid #f0e9ff;
}

/* line 576, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog_right_sidebar .single_sidebar_widget {
  background: #fbf9ff;
  padding: 30px;
  margin-bottom: 30px;
}

/* line 585, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog_right_sidebar .search_widget .form-control {
  height: 50px;
  border-color: #f0e9ff;
  font-size: 13px;
  color: #999999;
  padding-left: 20px;
  border-radius: 0;
  border-right: 0;
}

/* line 594, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog_right_sidebar .search_widget .form-control::placeholder {
  color: #999999;
}

/* line 598, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog_right_sidebar .search_widget .form-control:focus {
  border-color: #f0e9ff;
  outline: 0;
  box-shadow: none;
}

/* line 607, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog_right_sidebar .search_widget .input-group button {
  background: #fff;
  border-left: 0;
  border: 1px solid #f0e9ff;
  padding: 4px 15px;
  border-left: 0;
}

/* line 614, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog_right_sidebar .search_widget .input-group button i, .blog_right_sidebar .search_widget .input-group button span {
  font-size: 14px;
  color: #999999;
}

/* line 625, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog_right_sidebar .newsletter_widget .form-control {
  height: 50px;
  border-color: #f0e9ff;
  font-size: 13px;
  color: #999999;
  padding-left: 20px;
  border-radius: 0;
}

/* line 634, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog_right_sidebar .newsletter_widget .form-control::placeholder {
  color: #999999;
}

/* line 638, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog_right_sidebar .newsletter_widget .form-control:focus {
  border-color: #f0e9ff;
  outline: 0;
  box-shadow: none;
}

/* line 647, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog_right_sidebar .newsletter_widget .input-group button {
  background: #fff;
  border-left: 0;
  border: 1px solid #f0e9ff;
  padding: 4px 15px;
  border-left: 0;
}

/* line 654, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog_right_sidebar .newsletter_widget .input-group button i, .blog_right_sidebar .newsletter_widget .input-group button span {
  font-size: 14px;
  color: #999999;
}

/* line 666, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog_right_sidebar .post_category_widget .cat-list li {
  border-bottom: 1px solid #f0e9ff;
  transition: all 0.3s ease 0s;
  padding-bottom: 12px;
}

/* line 671, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog_right_sidebar .post_category_widget .cat-list li:last-child {
  border-bottom: 0;
}

/* line 675, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog_right_sidebar .post_category_widget .cat-list li a {
  font-size: 14px;
  line-height: 20px;
  color: #888888;
}

/* line 679, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog_right_sidebar .post_category_widget .cat-list li a p {
  margin-bottom: 0px;
}

/* line 683, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog_right_sidebar .post_category_widget .cat-list li + li {
  padding-top: 15px;
}

/* line 698, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog_right_sidebar .popular_post_widget .post_item .media-body {
  justify-content: center;
  align-self: center;
  padding-left: 20px;
}

/* line 702, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog_right_sidebar .popular_post_widget .post_item .media-body h3 {
  font-size: 16px;
  line-height: 20px;
  margin-bottom: 6px;
  transition: all 0.3s linear;
}

/* line 711, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog_right_sidebar .popular_post_widget .post_item .media-body a:hover {
  color: #53C9BB;
}

/* line 716, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog_right_sidebar .popular_post_widget .post_item .media-body p {
  font-size: 14px;
  line-height: 21px;
  margin-bottom: 0px;
}

/* line 722, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog_right_sidebar .popular_post_widget .post_item + .post_item {
  margin-top: 20px;
}

/* line 730, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog_right_sidebar .tag_cloud_widget ul li {
  display: inline-block;
}

/* line 732, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog_right_sidebar .tag_cloud_widget ul li a {
  display: inline-block;
  border: 1px solid #eeeeee;
  background: #fff;
  padding: 4px 20px;
  margin-bottom: 8px;
  margin-right: 3px;
  transition: all 0.3s ease 0s;
  color: #888888;
  font-size: 13px;
}

/* line 742, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog_right_sidebar .tag_cloud_widget ul li a:hover {
  background: #53C9BB;
  color: #fff;
}

/* line 753, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog_right_sidebar .instagram_feeds .instagram_row {
  display: flex;
  margin-right: -6px;
  margin-left: -6px;
}

/* line 759, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog_right_sidebar .instagram_feeds .instagram_row li {
  width: 33.33%;
  float: left;
  padding-right: 6px;
  padding-left: 6px;
  margin-bottom: 15px;
}

/* line 859, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog_right_sidebar .br {
  width: 100%;
  height: 1px;
  background: #eeeeee;
  margin: 30px 0px;
}

/* line 880, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog-pagination {
  margin-top: 80px;
}

/* line 884, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog-pagination .page-link {
  font-size: 14px;
  position: relative;
  display: block;
  padding: 0;
  text-align: center;
  margin-left: -1px;
  line-height: 45px;
  width: 45px;
  height: 45px;
  border-radius: 0 !important;
  color: #8a8a8a;
  border: 1px solid #f0e9ff;
  margin-right: 10px;
}

/* line 901, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog-pagination .page-link i, .blog-pagination .page-link span {
  font-size: 13px;
}

/* line 912, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog-pagination .page-item.active .page-link {
  background-color: #fbf9ff;
  border-color: #f0e9ff;
  color: #888888;
}

/* line 919, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.blog-pagination .page-item:last-child .page-link {
  margin-right: 0;
}

/*============ Start Blog Single Styles  =============*/
/* line 944, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-post-area .blog_details {
  box-shadow: none;
  padding: 0;
}

/* line 949, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-post-area .social-links {
  padding-top: 10px;
}

/* line 951, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-post-area .social-links li {
  display: inline-block;
  margin-bottom: 10px;
}

/* line 954, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-post-area .social-links li a {
  color: #cccccc;
  padding: 7px;
  font-size: 14px;
  transition: all 0.2s linear;
}

/* line 965, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-post-area .blog_details {
  padding-top: 26px;
}

/* line 967, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-post-area .blog_details p {
  margin-bottom: 20px;
  font-size: 15px;
}

/* line 975, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-post-area .quote-wrapper {
  background: rgba(130, 139, 178, 0.1);
  padding: 15px;
  line-height: 1.733;
  color: #888888;
  font-style: italic;
  margin-top: 25px;
  margin-bottom: 25px;
}

@media (min-width: 768px) {
  /* line 975, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
  .single-post-area .quote-wrapper {
    padding: 30px;
  }
}

/* line 988, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-post-area .quotes {
  background: #fff;
  padding: 15px 15px 15px 20px;
  border-left: 2px solid;
}

@media (min-width: 768px) {
  /* line 988, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
  .single-post-area .quotes {
    padding: 25px 25px 25px 30px;
  }
}

/* line 997, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-post-area .arrow {
  position: absolute;
}

/* line 999, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-post-area .arrow .lnr {
  font-size: 20px;
  font-weight: 600;
}

/* line 1005, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-post-area .thumb .overlay-bg {
  background: rgba(0, 0, 0, 0.8);
}

/* line 1009, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-post-area .navigation-top {
  padding-top: 15px;
  border-top: 1px solid #f0e9ff;
}

/* line 1013, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-post-area .navigation-top p {
  margin-bottom: 0;
}

/* line 1017, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-post-area .navigation-top .like-info {
  font-size: 14px;
}

/* line 1020, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-post-area .navigation-top .like-info i, .single-post-area .navigation-top .like-info span {
  font-size: 16px;
  margin-right: 5px;
}

/* line 1026, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-post-area .navigation-top .comment-count {
  font-size: 14px;
}

/* line 1029, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-post-area .navigation-top .comment-count i, .single-post-area .navigation-top .comment-count span {
  font-size: 16px;
  margin-right: 5px;
}

/* line 1037, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-post-area .navigation-top .social-icons li {
  display: inline-block;
  margin-right: 15px;
}

/* line 1041, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-post-area .navigation-top .social-icons li:last-child {
  margin: 0;
}

/* line 1045, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-post-area .navigation-top .social-icons li i, .single-post-area .navigation-top .social-icons li span {
  font-size: 14px;
  color: #999999;
}

/* line 1061, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-post-area .blog-author {
  padding: 40px 30px;
  background: #fbf9ff;
  margin-top: 50px;
}

@media (max-width: 600px) {
  /* line 1061, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
  .single-post-area .blog-author {
    padding: 20px 8px;
  }
}

/* line 1070, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-post-area .blog-author img {
  width: 90px;
  height: 90px;
  border-radius: 50%;
  margin-right: 30px;
}

@media (max-width: 600px) {
  /* line 1070, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
  .single-post-area .blog-author img {
    margin-right: 15px;
    width: 45px;
    height: 45px;
  }
}

/* line 1083, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-post-area .blog-author a {
  display: inline-block;
}

/* line 1086, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-post-area .blog-author a:hover {
  color: #53C9BB;
}

/* line 1091, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-post-area .blog-author p {
  margin-bottom: 0;
  font-size: 15px;
}

/* line 1096, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-post-area .blog-author h4 {
  font-size: 16px;
}

/* line 1103, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-post-area .navigation-area {
  border-bottom: 1px solid #eee;
  padding-bottom: 30px;
  margin-top: 55px;
}

/* line 1107, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-post-area .navigation-area p {
  margin-bottom: 0px;
}

/* line 1110, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-post-area .navigation-area h4 {
  font-size: 18px;
  line-height: 25px;
}

/* line 1115, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-post-area .navigation-area .nav-left {
  text-align: left;
}

/* line 1117, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-post-area .navigation-area .nav-left .thumb {
  margin-right: 20px;
  background: #000;
}

/* line 1120, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-post-area .navigation-area .nav-left .thumb img {
  -webkit-transition: 0.5s;
  transition: 0.5s;
}

/* line 1124, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-post-area .navigation-area .nav-left .lnr {
  margin-left: 20px;
  opacity: 0;
  -webkit-transition: 0.5s;
  transition: 0.5s;
}

/* line 1130, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-post-area .navigation-area .nav-left:hover .lnr {
  opacity: 1;
}

/* line 1134, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-post-area .navigation-area .nav-left:hover .thumb img {
  opacity: .5;
}

@media (max-width: 767px) {
  /* line 1115, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
  .single-post-area .navigation-area .nav-left {
    margin-bottom: 30px;
  }
}

/* line 1143, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-post-area .navigation-area .nav-right {
  text-align: right;
}

/* line 1145, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-post-area .navigation-area .nav-right .thumb {
  margin-left: 20px;
  background: #000;
}

/* line 1148, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-post-area .navigation-area .nav-right .thumb img {
  -webkit-transition: 0.5s;
  transition: 0.5s;
}

/* line 1152, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-post-area .navigation-area .nav-right .lnr {
  margin-right: 20px;
  opacity: 0;
  -webkit-transition: 0.5s;
  transition: 0.5s;
}

/* line 1158, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-post-area .navigation-area .nav-right:hover .lnr {
  opacity: 1;
}

/* line 1162, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.single-post-area .navigation-area .nav-right:hover .thumb img {
  opacity: .5;
}

@media (max-width: 991px) {
  /* line 1170, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
  .single-post-area .sidebar-widgets {
    padding-bottom: 0px;
  }
}

/* line 1177, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.comments-area {
  background: transparent;
  border-top: 1px solid #eee;
  padding: 45px 0;
  margin-top: 50px;
}

@media (max-width: 414px) {
  /* line 1177, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
  .comments-area {
    padding: 50px 8px;
  }
}

/* line 1186, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.comments-area h4 {
  margin-bottom: 35px;
  font-size: 18px;
}

/* line 1192, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.comments-area h5 {
  font-size: 16px;
  margin-bottom: 0px;
}

/* line 1199, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.comments-area .comment-list {
  padding-bottom: 48px;
}

/* line 1201, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.comments-area .comment-list:last-child {
  padding-bottom: 0px;
}

/* line 1204, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.comments-area .comment-list.left-padding {
  padding-left: 25px;
}

@media (max-width: 413px) {
  /* line 1209, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
  .comments-area .comment-list .single-comment h5 {
    font-size: 12px;
  }
  /* line 1212, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
  .comments-area .comment-list .single-comment .date {
    font-size: 11px;
  }
  /* line 1215, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
  .comments-area .comment-list .single-comment .comment {
    font-size: 10px;
  }
}

/* line 1221, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.comments-area .thumb {
  margin-right: 20px;
}

/* line 1224, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.comments-area .thumb img {
  width: 70px;
  border-radius: 50%;
}

/* line 1229, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.comments-area .date {
  font-size: 14px;
  color: #999999;
  margin-bottom: 0;
  margin-left: 20px;
}

/* line 1235, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.comments-area .comment {
  margin-bottom: 10px;
  color: #777777;
  font-size: 15px;
}

/* line 1240, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.comments-area .btn-reply {
  background-color: transparent;
  color: #888888;
  padding: 5px 18px;
  font-size: 14px;
  display: block;
  font-weight: 400;
}

/* line 1257, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.comment-form {
  border-top: 1px solid #eee;
  padding-top: 45px;
  margin-top: 50px;
  margin-bottom: 20px;
}

/* line 1265, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.comment-form .form-group {
  margin-bottom: 30px;
}

/* line 1269, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.comment-form h4 {
  margin-bottom: 40px;
  font-size: 18px;
  line-height: 22px;
}

/* line 1276, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.comment-form .name {
  padding-left: 0px;
}

@media (max-width: 767px) {
  /* line 1276, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
  .comment-form .name {
    padding-right: 0px;
    margin-bottom: 1rem;
  }
}

/* line 1283, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.comment-form .email {
  padding-right: 0px;
}

@media (max-width: 991px) {
  /* line 1283, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
  .comment-form .email {
    padding-left: 0px;
  }
}

/* line 1289, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.comment-form .form-control {
  border: 1px solid #f0e9ff;
  border-radius: 5px;
  height: 48px;
  padding-left: 18px;
  font-size: 13px;
  background: transparent;
}

/* line 1297, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.comment-form .form-control:focus {
  outline: 0;
  box-shadow: none;
}

/* line 1302, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.comment-form .form-control::placeholder {
  font-weight: 300;
  color: #999999;
}

/* line 1307, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.comment-form .form-control::placeholder {
  color: #777777;
}

/* line 1311, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.comment-form textarea {
  padding-top: 18px;
  border-radius: 12px;
  height: 100% !important;
}

/* line 1316, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.comment-form ::-webkit-input-placeholder {
  /* Chrome/Opera/Safari */
  font-size: 13px;
  color: #777;
}

/* line 1321, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.comment-form ::-moz-placeholder {
  /* Firefox 19+ */
  font-size: 13px;
  color: #777;
}

/* line 1326, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.comment-form :-ms-input-placeholder {
  /* IE 10+ */
  font-size: 13px;
  color: #777;
}

/* line 1331, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog.scss */
.comment-form :-moz-placeholder {
  /* Firefox 18- */
  font-size: 13px;
  color: #777;
}

/*============ End Blog Single Styles  =============*/
/* line 4, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_single_blog.scss */
.single_blog_post .desc a {
  font-size: 16px;
  color: #232b2b !important;
}

/* line 10, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_single_blog.scss */
.single_blog_post .single_blog .single_appartment_content {
  padding: 38px 38px 23px;
  border: 0px solid #fdcb9e;
  box-shadow: 0px 10px 20px 0px rgba(221, 221, 221, 0.3);
}

/* line 14, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_single_blog.scss */
.single_blog_post .single_blog .single_appartment_content p {
  font-size: 12px;
  text-transform: uppercase;
  margin-bottom: 20px;
}

/* line 18, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_single_blog.scss */
.single_blog_post .single_blog .single_appartment_content p a {
  color: #53C9BB;
}

/* line 22, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_single_blog.scss */
.single_blog_post .single_blog .single_appartment_content h4 {
  font-size: 24px;
  font-weight: 600;
  line-height: 1.481;
  margin-bottom: 16px;
}

/* line 28, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_single_blog.scss */
.single_blog_post .single_blog .single_appartment_content h5 {
  font-size: 15px;
  color: #8a8a8a;
  font-weight: 400;
}

/* line 33, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_single_blog.scss */
.single_blog_post .single_blog .single_appartment_content .list-unstyled {
  margin-top: 33px;
}

/* line 35, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_single_blog.scss */
.single_blog_post .single_blog .single_appartment_content .list-unstyled li {
  display: inline;
  margin-right: 17px;
  color: #999999;
}

/* line 39, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_single_blog.scss */
.single_blog_post .single_blog .single_appartment_content .list-unstyled li a {
  margin-right: 8px;
  color: #999999;
}

/**************menu part start*****************/
/* line 2, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_menu.scss */
.sub_header {
  padding: 25px 0px;
}

@media (max-width: 576px) {
  /* line 5, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_menu.scss */
  .sub_header #logo {
    text-align: center;
  }
}

@media only screen and (min-width: 576px) and (max-width: 767px) {
  /* line 10, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_menu.scss */
  .sub_header #logo {
    text-align: center;
  }
}

@media (max-width: 576px) {
  /* line 20, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_menu.scss */
  .sub_header .sub_header_social_icon {
    float: none !important;
    text-align: right;
  }
}

@media only screen and (min-width: 576px) and (max-width: 767px) {
  /* line 20, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_menu.scss */
  .sub_header .sub_header_social_icon {
    float: none !important;
    text-align: right;
  }
}

/* line 35, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_menu.scss */
.sub_header .sub_header_social_icon a {
  font-size: 14px;
  color: #555555;
  margin-left: 60px;
  display: inline-block;
}

@media (max-width: 991px) {
  /* line 35, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_menu.scss */
  .sub_header .sub_header_social_icon a {
    margin-left: 5px;
    margin-right: 5px;
    text-align: left !important;
  }
}

/* line 45, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_menu.scss */
.sub_header .sub_header_social_icon a i {
  margin-right: 12px;
  color: #53C9BB;
}

/* line 50, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_menu.scss */
.sub_header .sub_header_social_icon .register_icon {
  border: 1px solid #e5e9ed;
  padding: 9px 26px 9px 60px;
  border-radius: 50px;
  position: relative;
}

/* line 55, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_menu.scss */
.sub_header .sub_header_social_icon .register_icon i {
  display: inline-block;
  height: 40px;
  width: 40px;
  text-align: center;
  line-height: 38px;
  border: 1px solid #e5e9ed;
  border-radius: 50%;
  position: absolute;
  left: -1px;
  top: -1px;
  -webkit-transition: 2s;
  transition: 2s;
}

/* line 68, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_menu.scss */
.sub_header .sub_header_social_icon .register_icon:hover {
  padding: 9px 60px 9px 26px;
  background-color: #53C9BB;
  color: #fff;
}

/* line 72, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_menu.scss */
.sub_header .sub_header_social_icon .register_icon:hover i {
  left: auto;
  right: -14px;
  top: -1px;
  color: #fff;
}

/* line 83, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_menu.scss */
.sub_header .sub_header_social_icon a i {
  font-size: 12px;
  color: #fff;
  background-color: #53C9BB;
  height: 30px;
  width: 30px;
  line-height: 30px;
  text-align: center;
  display: inline-block;
  border-radius: 50%;
}

/* line 95, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_menu.scss */
.sub_header .sub_header_social_icon .btn_1 {
  color: #fff;
  background-color: #FF5B5B;
}

/* line 98, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_menu.scss */
.sub_header .sub_header_social_icon .btn_1:hover {
  background-color: #53C9BB;
}

/* line 104, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_menu.scss */
.main_menu {
  background-color: #082B49;
}

/* line 106, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_menu.scss */
.main_menu .navbar {
  padding: 0;
}

/* line 111, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_menu.scss */
.main_menu ul li {
  display: inline-block;
  font-size: 16px;
  text-transform: capitalize;
}

/* line 115, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_menu.scss */
.main_menu ul li :hover {
  color: #53C9BB !important;
}

/* line 118, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_menu.scss */
.main_menu ul li a {
  color: #fff !important;
  padding: 27px 35px !important;
  line-height: 16px;
}

@media (max-width: 991px) {
  /* line 118, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_menu.scss */
  .main_menu ul li a {
    padding: 12px 10px !important;
  }
}

@media only screen and (min-width: 992px) and (max-width: 1200px) {
  /* line 118, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_menu.scss */
  .main_menu ul li a {
    padding: 27px 20px !important;
  }
}

/* line 132, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_menu.scss */
.main_menu .header_social_icon ul li {
  padding-right: 13px;
}

/* line 134, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_menu.scss */
.main_menu .header_social_icon ul li a {
  color: #c3c6c9;
}

/* line 136, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_menu.scss */
.main_menu .header_social_icon ul li a:hover {
  color: #53C9BB;
}

@media (max-width: 991px) {
  /* line 143, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_menu.scss */
  .main_menu .navbar {
    padding: 15px 0;
  }
  /* line 147, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_menu.scss */
  .main_menu .navbar-toggler i {
    color: #fff;
    font-size: 30px;
  }
  /* line 152, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_menu.scss */
  .main_menu .navbar-collapse {
    position: absolute;
    left: 0;
    top: 71px;
    width: 100%;
    background-color: #fff;
    z-index: 999;
  }
  /* line 160, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_menu.scss */
  .main_menu .nav-item {
    padding: 5px 10px 5px 15px;
    background-color: #53C9BB;
  }
  /* line 164, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_menu.scss */
  .main_menu .navbar-nav .nav-link:hover {
    color: #fff !important;
  }
  /* line 168, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_menu.scss */
  .main_menu .dropdown .dropdown-menu {
    transform: scale(1, 0);
    display: none;
  }
  /* line 173, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_menu.scss */
  .main_menu .dropdown:hover .dropdown-menu {
    transform: scale(1);
    display: block;
  }
}

@media only screen and (min-width: 992px) and (max-width: 1200px) {
  /* line 182, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_menu.scss */
  .main_menu .dropdown .dropdown-menu {
    transform: scale(1, 0);
    display: none;
  }
  /* line 187, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_menu.scss */
  .main_menu .dropdown:hover .dropdown-menu {
    transform: scale(1);
    display: block;
  }
}

/* line 197, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_menu.scss */
.menu_fixed {
  position: fixed;
  z-index: 9999 !important;
  width: 100%;
  background-color: #53C9BB;
  box-shadow: 0px 10px 15px rgba(0, 0, 0, 0.05);
  top: 0;
}

/* line 204, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_menu.scss */
.menu_fixed span {
  color: #000 !important;
}

/* line 210, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_menu.scss */
.menu_fixed ul li a:hover {
  color: #fff !important;
}

/* line 217, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_menu.scss */
.dropdown-menu {
  border: 0px solid rgba(0, 0, 0, 0.15) !important;
  background-color: #fafafa;
}

/* line 223, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_menu.scss */
.dropdown .dropdown-menu {
  transition: all 0.5s;
  overflow: hidden;
  transform-origin: top center;
  transform: scale(1, 0);
  display: block;
  border-radius: 0;
  padding: 0;
  margin-top: 0;
}

/* line 232, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_menu.scss */
.dropdown .dropdown-menu .dropdown-item {
  font-size: 14px;
  padding: 12px 20px !important;
  color: #53C9BB !important;
}

/* line 237, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_menu.scss */
.dropdown .dropdown-menu .dropdown-item:hover {
  background-color: #FF5B5B;
  color: #fff !important;
}

/* line 244, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_menu.scss */
.dropdown:hover .dropdown-menu {
  transform: scale(1);
}

/**************** banner part css start ****************/
/* line 2, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_banner.scss */
.banner_part {
  height: 800px;
  display: flex;
  align-items: center;
  position: relative;
  background-image: url("../img/banner_bg.png");
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  background-position: right;
}

@media (max-width: 576px) {
  /* line 2, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_banner.scss */
  .banner_part {
    height: 600px;
    background-color: #FEDEE1;
    background-image: none;
  }
}

@media only screen and (min-width: 576px) and (max-width: 767px) {
  /* line 2, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_banner.scss */
  .banner_part {
    height: 650px;
    background-color: #FEDEE1;
    background-image: none;
  }
}

@media only screen and (min-width: 768px) and (max-width: 991px) {
  /* line 2, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_banner.scss */
  .banner_part {
    height: 700px;
    background-color: #FEDEE1;
    background-image: none;
  }
}

@media only screen and (min-width: 992px) and (max-width: 1200px) {
  /* line 2, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_banner.scss */
  .banner_part {
    background-position: center;
  }
}

/* line 27, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_banner.scss */
.banner_part:after {
  position: absolute;
  content: "";
  left: 0;
  bottom: -1px;
  width: 100%;
  height: 130px;
  background-image: url(../img/banner_sharp.png);
  background-repeat: no-repeat;
  background-size: cover;
}

/* line 38, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_banner.scss */
.banner_part .banner_text {
  display: table;
  width: 100%;
  height: 100%;
  position: relative;
  z-index: 99;
  margin-top: 60px;
}

@media (max-width: 576px) {
  /* line 38, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_banner.scss */
  .banner_part .banner_text {
    text-align: center;
    margin-top: 0px;
  }
}

/* line 49, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_banner.scss */
.banner_part .banner_text .banner_text_iner {
  display: table-cell;
  vertical-align: middle;
}

/* line 53, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_banner.scss */
.banner_part .banner_text h5 {
  font-size: 22px;
  text-transform: capitalize;
  font-weight: 400;
  color: #FF5B5B;
  line-height: 25px;
}

/* line 60, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_banner.scss */
.banner_part .banner_text h1 {
  font-size: 80px;
  line-height: 90px;
  text-transform: capitalize;
  font-weight: 400;
  margin: 23px 0 45px;
}

@media (max-width: 991px) {
  /* line 60, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_banner.scss */
  .banner_part .banner_text h1 {
    font-size: 40px;
    margin-bottom: 15px;
    line-height: 1.3;
    margin: 15px 0 20px;
  }
}

@media only screen and (min-width: 992px) and (max-width: 1200px) {
  /* line 60, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_banner.scss */
  .banner_part .banner_text h1 {
    font-size: 40px;
    margin-bottom: 15px;
    line-height: 1.4;
  }
}

/**************** hero part css end ****************/
/**************** about css start ****************/
/* line 2, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_about.scss */
.about_part {
  position: relative;
  z-index: 1;
}

@media (max-width: 991px) {
  /* line 5, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_about.scss */
  .about_part .about_img {
    margin-bottom: 30px;
  }
}

/* line 11, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_about.scss */
.about_part .about_text h2 {
  line-height: 58px;
  margin: 25px 0;
  font-size: 46px;
  font-weight: 400;
}

@media (max-width: 991px) {
  /* line 11, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_about.scss */
  .about_part .about_text h2 {
    font-size: 25px;
    margin-bottom: 15px;
    line-height: 30px;
    margin: 15px 0;
  }
}

/* line 23, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_about.scss */
.about_part .about_text .btn_1 {
  margin-top: 60px;
  padding: 15px 69px;
}

@media (max-width: 991px) {
  /* line 23, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_about.scss */
  .about_part .about_text .btn_1 {
    margin-top: 30px;
    padding: 15px 30px;
  }
}

@media only screen and (min-width: 992px) and (max-width: 1200px) {
  /* line 23, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_about.scss */
  .about_part .about_text .btn_1 {
    margin-top: 30px;
  }
}

/******** services css hrer ********/
/* line 2, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_services.scss */
.services_bg {
  background-image: url(../img/services_bg.png);
  background-repeat: no-repeat;
  background-position: center;
  background-size: cover;
}

@media (max-width: 991px) {
  /* line 8, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_services.scss */
  .service_part {
    background-color: #F2F8F8;
    padding: 70px 0 40px;
  }
}

/* line 13, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_services.scss */
.service_part .single_service_part {
  text-align: center;
}

@media (max-width: 991px) {
  /* line 13, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_services.scss */
  .service_part .single_service_part {
    margin-bottom: 30px;
  }
}

/* line 18, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_services.scss */
.service_part .single_service_part h3 {
  font-size: 30px;
  font-weight: 500;
  padding: 43px 0 20px;
}

@media (max-width: 991px) {
  /* line 18, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_services.scss */
  .service_part .single_service_part h3 {
    padding: 10px 0 0;
    font-size: 20px;
  }
}

/* line 27, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_services.scss */
.service_part .single_service_part p {
  padding: 0 30px;
}

@media (max-width: 991px) {
  /* line 27, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_services.scss */
  .service_part .single_service_part p {
    padding: 0;
  }
}

/* line 34, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_services.scss */
.service_part img {
  border-radius: 50%;
}

@media (max-width: 991px) {
  /* line 34, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_services.scss */
  .service_part img {
    max-width: 100px;
  }
}

/******** services css end ********/
/******** abopt number counter ***********/
/* line 3, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_adopt_part.scss */
.abopt_number_counter h2 {
  font-size: 46px;
  line-height: 58px;
  font-weight: 400;
}

@media (max-width: 991px) {
  /* line 3, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_adopt_part.scss */
  .abopt_number_counter h2 {
    font-size: 25px;
    line-height: 30px;
  }
}

/* line 12, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_adopt_part.scss */
.abopt_number_counter p {
  margin: 20px 0 38px;
}

@media (max-width: 991px) {
  /* line 12, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_adopt_part.scss */
  .abopt_number_counter p {
    margin: 15px 0 20px;
  }
}

/* line 18, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_adopt_part.scss */
.abopt_number_counter .btn_1 {
  margin-top: 65px;
}

@media (max-width: 991px) {
  /* line 18, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_adopt_part.scss */
  .abopt_number_counter .btn_1 {
    margin-top: 25px;
  }
}

@media only screen and (min-width: 992px) and (max-width: 1200px) {
  /* line 18, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_adopt_part.scss */
  .abopt_number_counter .btn_1 {
    margin-top: 25px;
  }
}

@media (max-width: 991px) {
  /* line 27, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_adopt_part.scss */
  .abopt_number_counter .adopt_image {
    margin-top: 25px;
  }
}

/* line 32, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_adopt_part.scss */
.abopt_number_counter .counter_number {
  display: flex;
}

/* line 34, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_adopt_part.scss */
.abopt_number_counter .counter_number .single_counter_number {
  flex: 35%;
  max-width: 35%;
}

/* line 37, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_adopt_part.scss */
.abopt_number_counter .counter_number .single_counter_number h3 {
  font-size: 36px;
}

/* line 40, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_adopt_part.scss */
.abopt_number_counter .counter_number .single_counter_number img {
  display: block;
}

/* line 43, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_adopt_part.scss */
.abopt_number_counter .counter_number .single_counter_number span {
  font-size: 30px;
  font-weight: 500;
  line-height: 30px;
  margin: 14px 0 5px;
  display: inline-block;
  margin-right: 10px;
}

/* line 51, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_adopt_part.scss */
.abopt_number_counter .counter_number .single_counter_number p {
  margin: 0;
}

/**************** blog part css start ****************/
/* line 2, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog_part.scss */
.blog_part {
  position: relative;
  z-index: 1;
}

/* line 5, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog_part.scss */
.blog_part:after {
  position: absolute;
  left: 0;
  bottom: 0;
  width: 100%;
  height: 46%;
  content: "";
  background-color: #fff7ef;
  z-index: -1;
}

@media only screen and (min-width: 576px) and (max-width: 767px) {
  /* line 5, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog_part.scss */
  .blog_part:after {
    height: 35%;
  }
}

@media only screen and (min-width: 768px) and (max-width: 991px) {
  /* line 5, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog_part.scss */
  .blog_part:after {
    height: 35%;
  }
}

/* line 27, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog_part.scss */
.blog_part .blog_right_sidebar .widget_title {
  font-size: 20px;
  margin-bottom: 40px;
  font-style: inherit !important;
}

@media (max-width: 576px) {
  /* line 32, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog_part.scss */
  .blog_part .single-home-blog {
    margin-bottom: 20px;
  }
}

@media only screen and (min-width: 576px) and (max-width: 767px) {
  /* line 32, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog_part.scss */
  .blog_part .single-home-blog {
    margin-bottom: 20px;
  }
}

@media only screen and (min-width: 768px) and (max-width: 991px) {
  /* line 32, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog_part.scss */
  .blog_part .single-home-blog {
    margin-bottom: 20px;
  }
}

/* line 45, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog_part.scss */
.blog_part .single-home-blog .card-img-top {
  border-radius: 0px;
}

/* line 48, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog_part.scss */
.blog_part .single-home-blog .card {
  border: 0px solid transparent;
  border-radius: 0px;
  background-color: transparent;
}

/* line 52, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog_part.scss */
.blog_part .single-home-blog .card .card-body {
  padding: 20px 0px 0px;
}

@media (max-width: 576px) {
  /* line 52, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog_part.scss */
  .blog_part .single-home-blog .card .card-body {
    padding: 10px 0px 0px;
  }
}

/* line 68, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog_part.scss */
.blog_part .single-home-blog .card .dot {
  position: relative;
  padding-left: 15px;
}

/* line 71, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog_part.scss */
.blog_part .single-home-blog .card .dot:after {
  position: absolute;
  content: "";
  width: 8px;
  height: 8px;
  top: 6px;
  left: 0;
  background-color: #53C9BB;
  border-radius: 2px;
}

/* line 82, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog_part.scss */
.blog_part .single-home-blog .card span {
  color: #8a8a8a;
  margin-bottom: 10px;
  display: inline-block;
  margin-top: 10px;
}

@media (max-width: 576px) {
  /* line 82, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog_part.scss */
  .blog_part .single-home-blog .card span {
    margin-bottom: 5px;
    margin-top: 5px;
  }
}

@media only screen and (min-width: 576px) and (max-width: 767px) {
  /* line 82, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog_part.scss */
  .blog_part .single-home-blog .card span {
    margin-bottom: 5px;
    margin-top: 5px;
  }
}

@media only screen and (min-width: 768px) and (max-width: 991px) {
  /* line 82, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog_part.scss */
  .blog_part .single-home-blog .card span {
    margin-bottom: 5px;
    margin-top: 5px;
  }
}

@media only screen and (min-width: 992px) and (max-width: 1200px) {
  /* line 82, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog_part.scss */
  .blog_part .single-home-blog .card span {
    margin-bottom: 5px;
    margin-top: 5px;
  }
}

/* line 104, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog_part.scss */
.blog_part .single-home-blog .card h5 {
  font-weight: 700;
  line-height: 1.5;
  font-size: 20px;
  margin-bottom: 25px;
  -webkit-transition: 0.8s;
  transition: 0.8s;
}

@media (max-width: 576px) {
  /* line 104, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog_part.scss */
  .blog_part .single-home-blog .card h5 {
    margin-bottom: 10px;
  }
}

@media only screen and (min-width: 576px) and (max-width: 767px) {
  /* line 104, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog_part.scss */
  .blog_part .single-home-blog .card h5 {
    margin-bottom: 10px;
    font-size: 16px;
  }
}

@media only screen and (min-width: 768px) and (max-width: 991px) {
  /* line 104, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog_part.scss */
  .blog_part .single-home-blog .card h5 {
    margin-bottom: 10px;
  }
}

@media only screen and (min-width: 992px) and (max-width: 1200px) {
  /* line 104, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog_part.scss */
  .blog_part .single-home-blog .card h5 {
    margin-bottom: 10px;
    font-size: 18px;
  }
}

/* line 124, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog_part.scss */
.blog_part .single-home-blog .card h5:hover {
  color: #53C9BB;
}

/* line 128, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog_part.scss */
.blog_part .single-home-blog .card ul {
  border-top: 1px solid #e1e1e1;
}

/* line 130, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog_part.scss */
.blog_part .single-home-blog .card ul li {
  display: inline-block;
  color: #8a8a8a;
  margin-top: 20px;
  margin-right: 40px;
}

@media (max-width: 576px) {
  /* line 130, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog_part.scss */
  .blog_part .single-home-blog .card ul li {
    margin-top: 10px;
  }
}

@media only screen and (min-width: 576px) and (max-width: 767px) {
  /* line 130, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog_part.scss */
  .blog_part .single-home-blog .card ul li {
    margin-top: 10px;
    margin-right: 10px;
  }
}

@media only screen and (min-width: 768px) and (max-width: 991px) {
  /* line 130, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog_part.scss */
  .blog_part .single-home-blog .card ul li {
    margin-top: 10px;
    margin-right: 10px;
  }
}

@media only screen and (min-width: 992px) and (max-width: 1200px) {
  /* line 130, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog_part.scss */
  .blog_part .single-home-blog .card ul li {
    margin-top: 10px;
    margin-right: 10px;
  }
}

/* line 150, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_blog_part.scss */
.blog_part .single-home-blog .card ul li span {
  margin-right: 10px;
}

/****** voulantier part here *******/
/* line 2, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_voulantier_part.scss */
.voulantier_part {
  text-align: center;
  margin: 0 auto;
}

@media (max-width: 991px) {
  /* line 2, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_voulantier_part.scss */
  .voulantier_part {
    padding: 70px 0 40px;
  }
}

@media only screen and (min-width: 992px) and (max-width: 1200px) {
  /* line 2, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_voulantier_part.scss */
  .voulantier_part {
    padding: 70px 0 40px;
  }
}

/* line 11, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_voulantier_part.scss */
.voulantier_part img {
  border-radius: 50%;
  max-width: 280px;
  margin: 0 auto;
  text-align: center;
}

@media (max-width: 991px) {
  /* line 11, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_voulantier_part.scss */
  .voulantier_part img {
    max-width: 200px;
  }
}

/* line 20, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_voulantier_part.scss */
.voulantier_part h4 {
  font-size: 30px;
  margin-top: 45px;
}

@media (max-width: 991px) {
  /* line 20, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_voulantier_part.scss */
  .voulantier_part h4 {
    font-size: 25px;
    margin-top: 10px;
  }
}

/* line 28, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_voulantier_part.scss */
.voulantier_part p {
  font-size: 16px;
  margin-top: 15px;
}

/* line 32, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_voulantier_part.scss */
.voulantier_part .social_icon {
  margin-top: 34px;
}

@media (max-width: 991px) {
  /* line 32, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_voulantier_part.scss */
  .voulantier_part .social_icon {
    margin-top: 10px;
  }
}

/* line 37, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_voulantier_part.scss */
.voulantier_part .social_icon a {
  color: #BABABA;
  margin: 0 8px;
}

@media (max-width: 991px) {
  /* line 42, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_voulantier_part.scss */
  .voulantier_part .single_voulantier_part {
    margin-bottom: 30px;
  }
}

@media only screen and (min-width: 992px) and (max-width: 1200px) {
  /* line 42, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_voulantier_part.scss */
  .voulantier_part .single_voulantier_part {
    margin-bottom: 30px;
  }
}

/******** client review part start *******/
/* line 2, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_client_review.scss */
.client_review {
  background-image: url(../img/review_bg.png);
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  padding: 180px 0;
  position: relative;
  z-index: 1;
}

/* line 10, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_client_review.scss */
.client_review:after {
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  content: "";
  background-color: #fff;
  opacity: .3;
  z-index: -1;
}

@media (max-width: 991px) {
  /* line 2, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_client_review.scss */
  .client_review {
    padding: 70px 0;
  }
}

@media only screen and (min-width: 992px) and (max-width: 1200px) {
  /* line 2, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_client_review.scss */
  .client_review {
    padding: 80px 0;
  }
}

/* line 27, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_client_review.scss */
.client_review h4 {
  font-size: 30px;
  line-height: 44px;
  margin-bottom: 15px;
  margin-top: 30px;
}

@media (max-width: 991px) {
  /* line 27, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_client_review.scss */
  .client_review h4 {
    font-size: 20px;
    line-height: 25px;
    margin-bottom: 10px;
    margin-top: 15px;
  }
}

@media only screen and (min-width: 992px) and (max-width: 1200px) {
  /* line 27, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_client_review.scss */
  .client_review h4 {
    font-size: 25px;
    line-height: 30px;
    margin-bottom: 10px;
    margin-top: 15px;
  }
}

/* line 45, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_client_review.scss */
.client_review .singke_client_review {
  text-align: center;
}

/* line 47, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_client_review.scss */
.client_review .singke_client_review img {
  border-radius: 50%;
  max-width: 80px;
  margin: 0 auto;
}

/* line 54, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_client_review.scss */
.client_review .owl-dots {
  text-align: center;
  margin-top: 20px;
}

/* line 57, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_client_review.scss */
.client_review .owl-dots .owl-dot {
  width: 12px;
  height: 12px;
  background-color: #4D4D4D;
  display: inline-block;
  border-radius: 50%;
  margin: 5px;
}

/* line 65, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_client_review.scss */
.client_review .owl-dots .owl-dot.active {
  background-color: #FF5B5B;
}

/*=================== contact banner start ====================*/
/* line 3, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_contact.scss */
.contact-info {
  margin-bottom: 25px;
}

/* line 6, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_contact.scss */
.contact-info__icon {
  margin-right: 20px;
}

/* line 9, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_contact.scss */
.contact-info__icon i, .contact-info__icon span {
  color: #8f9195;
  font-size: 27px;
}

/* line 17, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_contact.scss */
.contact-info .media-body h3 {
  font-size: 16px;
  margin-bottom: 0;
  font-size: 16px;
  color: #2a2a2a;
}

/* line 23, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_contact.scss */
.contact-info .media-body h3 a:hover {
  color: #53C9BB;
}

/* line 29, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_contact.scss */
.contact-info .media-body p {
  color: #8a8a8a;
}

/*=================== contact banner end ====================*/
/*=================== contact form start ====================*/
/* line 38, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_contact.scss */
.contact-title {
  font-size: 27px;
  font-weight: 600;
  margin-bottom: 20px;
}

/* line 46, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_contact.scss */
.form-contact label {
  font-size: 14px;
}

/* line 50, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_contact.scss */
.form-contact .form-group {
  margin-bottom: 30px;
}

/* line 54, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_contact.scss */
.form-contact .form-control {
  border: 1px solid #f0e9ff;
  border-radius: 5px;
  height: 48px;
  padding-left: 18px;
  font-size: 13px;
  background: transparent;
}

/* line 62, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_contact.scss */
.form-contact .form-control:focus {
  outline: 0;
  box-shadow: none;
}

/* line 67, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_contact.scss */
.form-contact .form-control::placeholder {
  font-weight: 300;
  color: #999999;
}

/* line 73, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_contact.scss */
.form-contact textarea {
  border-radius: 12px;
  height: 100% !important;
}

/*=================== contact form end ====================*/
/* Contact Success and error Area css
============================================================================================ */
/* line 90, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_contact.scss */
.modal-message .modal-dialog {
  position: absolute;
  top: 36%;
  left: 50%;
  transform: translateX(-50%) translateY(-50%) !important;
  margin: 0px;
  max-width: 500px;
  width: 100%;
}

/* line 99, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_contact.scss */
.modal-message .modal-dialog .modal-content .modal-header {
  text-align: center;
  display: block;
  border-bottom: none;
  padding-top: 50px;
  padding-bottom: 50px;
}

/* line 105, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_contact.scss */
.modal-message .modal-dialog .modal-content .modal-header .close {
  position: absolute;
  right: -15px;
  top: -15px;
  padding: 0px;
  color: #fff;
  opacity: 1;
  cursor: pointer;
}

/* line 114, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_contact.scss */
.modal-message .modal-dialog .modal-content .modal-header h2 {
  display: block;
  text-align: center;
  padding-bottom: 10px;
}

/* line 119, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_contact.scss */
.modal-message .modal-dialog .modal-content .modal-header p {
  display: block;
}

/* line 75, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.sample-text-area {
  background: #fff;
  padding: 100px 0 70px 0;
}

/* line 80, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.text-heading {
  margin-bottom: 30px;
  font-size: 24px;
}

/* line 85, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
b,
sup,
sub,
u,
del {
  color: #53C9BB;
}

/* line 93, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
h1 {
  font-size: 36px;
}

/* line 97, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
h2 {
  font-size: 30px;
}

/* line 101, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
h3 {
  font-size: 24px;
}

/* line 105, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
h4 {
  font-size: 18px;
}

/* line 109, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
h5 {
  font-size: 16px;
}

/* line 113, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
h6 {
  font-size: 14px;
}

/* line 117, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
h1,
h2,
h3,
h4,
h5,
h6 {
  line-height: 1.2em;
}

/* line 127, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.typography h1,
.typography h2,
.typography h3,
.typography h4,
.typography h5,
.typography h6 {
  color: #828bb2;
}

/* line 137, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.button-area {
  background: #fff;
}

/* line 138, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.button-area .border-top-generic {
  padding: 70px 15px;
  border-top: 1px dotted #eee;
}

/* line 146, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.button-group-area .genric-btn {
  margin-right: 10px;
  margin-top: 10px;
}

/* line 149, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.button-group-area .genric-btn:last-child {
  margin-right: 0;
}

/* line 155, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.genric-btn {
  display: inline-block;
  outline: none;
  line-height: 40px;
  padding: 0 30px;
  font-size: .8em;
  text-align: center;
  text-decoration: none;
  font-weight: 500;
  cursor: pointer;
  -webkit-transition: all 0.3s ease 0s;
  -moz-transition: all 0.3s ease 0s;
  -o-transition: all 0.3s ease 0s;
  transition: all 0.3s ease 0s;
}

/* line 166, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.genric-btn:focus {
  outline: none;
}

/* line 169, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.genric-btn.e-large {
  padding: 0 40px;
  line-height: 50px;
}

/* line 173, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.genric-btn.large {
  line-height: 45px;
}

/* line 176, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.genric-btn.medium {
  line-height: 30px;
}

/* line 179, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.genric-btn.small {
  line-height: 25px;
}

/* line 182, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.genric-btn.radius {
  border-radius: 3px;
}

/* line 185, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.genric-btn.circle {
  border-radius: 20px;
}

/* line 188, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.genric-btn.arrow {
  display: -webkit-inline-box;
  display: -ms-inline-flexbox;
  display: inline-flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
}

/* line 195, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.genric-btn.arrow span {
  margin-left: 10px;
}

/* line 199, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.genric-btn.default {
  color: #415094;
  background: #f9f9ff;
  border: 1px solid transparent;
}

/* line 203, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.genric-btn.default:hover {
  border: 1px solid #f9f9ff;
  background: #fff;
}

/* line 208, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.genric-btn.default-border {
  border: 1px solid #f9f9ff;
  background: #fff;
}

/* line 211, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.genric-btn.default-border:hover {
  color: #415094;
  background: #f9f9ff;
  border: 1px solid transparent;
}

/* line 217, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.genric-btn.primary {
  color: #fff;
  background: #53C9BB;
  border: 1px solid transparent;
}

/* line 221, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.genric-btn.primary:hover {
  color: #53C9BB;
  border: 1px solid #53C9BB;
  background: #fff;
}

/* line 227, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.genric-btn.primary-border {
  color: #53C9BB;
  border: 1px solid #53C9BB;
  background: #fff;
}

/* line 231, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.genric-btn.primary-border:hover {
  color: #fff;
  background: #53C9BB;
  border: 1px solid transparent;
}

/* line 237, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.genric-btn.success {
  color: #fff;
  background: #4cd3e3;
  border: 1px solid transparent;
}

/* line 241, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.genric-btn.success:hover {
  color: #4cd3e3;
  border: 1px solid #4cd3e3;
  background: #fff;
}

/* line 247, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.genric-btn.success-border {
  color: #4cd3e3;
  border: 1px solid #4cd3e3;
  background: #fff;
}

/* line 251, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.genric-btn.success-border:hover {
  color: #fff;
  background: #4cd3e3;
  border: 1px solid transparent;
}

/* line 257, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.genric-btn.info {
  color: #fff;
  background: #38a4ff;
  border: 1px solid transparent;
}

/* line 261, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.genric-btn.info:hover {
  color: #38a4ff;
  border: 1px solid #38a4ff;
  background: #fff;
}

/* line 267, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.genric-btn.info-border {
  color: #38a4ff;
  border: 1px solid #38a4ff;
  background: #fff;
}

/* line 271, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.genric-btn.info-border:hover {
  color: #fff;
  background: #38a4ff;
  border: 1px solid transparent;
}

/* line 277, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.genric-btn.warning {
  color: #fff;
  background: #f4e700;
  border: 1px solid transparent;
}

/* line 281, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.genric-btn.warning:hover {
  color: #f4e700;
  border: 1px solid #f4e700;
  background: #fff;
}

/* line 287, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.genric-btn.warning-border {
  color: #f4e700;
  border: 1px solid #f4e700;
  background: #fff;
}

/* line 291, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.genric-btn.warning-border:hover {
  color: #fff;
  background: #f4e700;
  border: 1px solid transparent;
}

/* line 297, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.genric-btn.danger {
  color: #fff;
  background: #f44a40;
  border: 1px solid transparent;
}

/* line 301, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.genric-btn.danger:hover {
  color: #f44a40;
  border: 1px solid #f44a40;
  background: #fff;
}

/* line 307, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.genric-btn.danger-border {
  color: #f44a40;
  border: 1px solid #f44a40;
  background: #fff;
}

/* line 311, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.genric-btn.danger-border:hover {
  color: #fff;
  background: #f44a40;
  border: 1px solid transparent;
}

/* line 317, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.genric-btn.link {
  color: #415094;
  background: #f9f9ff;
  text-decoration: underline;
  border: 1px solid transparent;
}

/* line 322, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.genric-btn.link:hover {
  color: #415094;
  border: 1px solid #f9f9ff;
  background: #fff;
}

/* line 328, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.genric-btn.link-border {
  color: #415094;
  border: 1px solid #f9f9ff;
  background: #fff;
  text-decoration: underline;
}

/* line 333, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.genric-btn.link-border:hover {
  color: #415094;
  background: #f9f9ff;
  border: 1px solid transparent;
}

/* line 339, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.genric-btn.disable {
  color: #222222, 0.3;
  background: #f9f9ff;
  border: 1px solid transparent;
  cursor: not-allowed;
}

/* line 347, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.generic-blockquote {
  padding: 30px 50px 30px 30px;
  background: #f9f9ff;
  border-left: 2px solid #53C9BB;
}

/* line 353, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.progress-table-wrap {
  overflow-x: scroll;
}

/* line 357, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.progress-table {
  background: #f9f9ff;
  padding: 15px 0px 30px 0px;
  min-width: 800px;
}

/* line 361, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.progress-table .serial {
  width: 11.83%;
  padding-left: 30px;
}

/* line 365, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.progress-table .country {
  width: 28.07%;
}

/* line 368, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.progress-table .visit {
  width: 19.74%;
}

/* line 371, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.progress-table .percentage {
  width: 40.36%;
  padding-right: 50px;
}

/* line 375, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.progress-table .table-head {
  display: flex;
}

/* line 377, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.progress-table .table-head .serial,
.progress-table .table-head .country,
.progress-table .table-head .visit,
.progress-table .table-head .percentage {
  color: #415094;
  line-height: 40px;
  text-transform: uppercase;
  font-weight: 500;
}

/* line 387, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.progress-table .table-row {
  padding: 15px 0;
  border-top: 1px solid #edf3fd;
  display: flex;
}

/* line 391, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.progress-table .table-row .serial,
.progress-table .table-row .country,
.progress-table .table-row .visit,
.progress-table .table-row .percentage {
  display: flex;
  align-items: center;
}

/* line 399, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.progress-table .table-row .country img {
  margin-right: 15px;
}

/* line 404, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.progress-table .table-row .percentage .progress {
  width: 80%;
  border-radius: 0px;
  background: transparent;
}

/* line 408, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.progress-table .table-row .percentage .progress .progress-bar {
  height: 5px;
  line-height: 5px;
}

/* line 411, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.progress-table .table-row .percentage .progress .progress-bar.color-1 {
  background-color: #6382e6;
}

/* line 414, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.progress-table .table-row .percentage .progress .progress-bar.color-2 {
  background-color: #e66686;
}

/* line 417, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.progress-table .table-row .percentage .progress .progress-bar.color-3 {
  background-color: #f09359;
}

/* line 420, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.progress-table .table-row .percentage .progress .progress-bar.color-4 {
  background-color: #73fbaf;
}

/* line 423, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.progress-table .table-row .percentage .progress .progress-bar.color-5 {
  background-color: #73fbaf;
}

/* line 426, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.progress-table .table-row .percentage .progress .progress-bar.color-6 {
  background-color: #6382e6;
}

/* line 429, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.progress-table .table-row .percentage .progress .progress-bar.color-7 {
  background-color: #a367e7;
}

/* line 432, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.progress-table .table-row .percentage .progress .progress-bar.color-8 {
  background-color: #e66686;
}

/* line 441, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.single-gallery-image {
  margin-top: 30px;
  background-repeat: no-repeat !important;
  background-position: center center !important;
  background-size: cover !important;
  height: 200px;
}

/* line 449, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.list-style {
  width: 14px;
  height: 14px;
}

/* line 455, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.unordered-list li {
  position: relative;
  padding-left: 30px;
  line-height: 1.82em !important;
}

/* line 459, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.unordered-list li:before {
  content: "";
  position: absolute;
  width: 14px;
  height: 14px;
  border: 3px solid #53C9BB;
  background: #fff;
  top: 4px;
  left: 0;
  border-radius: 50%;
}

/* line 473, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.ordered-list {
  margin-left: 30px;
}

/* line 475, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.ordered-list li {
  list-style-type: decimal-leading-zero;
  color: #53C9BB;
  font-weight: 500;
  line-height: 1.82em !important;
}

/* line 480, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.ordered-list li span {
  font-weight: 300;
  color: #828bb2;
}

/* line 488, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.ordered-list-alpha li {
  margin-left: 30px;
  list-style-type: lower-alpha;
  color: #53C9BB;
  font-weight: 500;
  line-height: 1.82em !important;
}

/* line 494, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.ordered-list-alpha li span {
  font-weight: 300;
  color: #828bb2;
}

/* line 502, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.ordered-list-roman li {
  margin-left: 30px;
  list-style-type: lower-roman;
  color: #53C9BB;
  font-weight: 500;
  line-height: 1.82em !important;
}

/* line 508, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.ordered-list-roman li span {
  font-weight: 300;
  color: #828bb2;
}

/* line 515, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.single-input {
  display: block;
  width: 100%;
  line-height: 40px;
  border: none;
  outline: none;
  background: #f9f9ff;
  padding: 0 20px;
}

/* line 523, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.single-input:focus {
  outline: none;
}

/* line 528, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.input-group-icon {
  position: relative;
}

/* line 530, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.input-group-icon .icon {
  position: absolute;
  left: 20px;
  top: 0;
  line-height: 40px;
  z-index: 3;
}

/* line 535, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.input-group-icon .icon i {
  color: #797979;
}

/* line 540, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.input-group-icon .single-input {
  padding-left: 45px;
}

/* line 545, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.single-textarea {
  display: block;
  width: 100%;
  line-height: 40px;
  border: none;
  outline: none;
  background: #f9f9ff;
  padding: 0 20px;
  height: 100px;
  resize: none;
}

/* line 555, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.single-textarea:focus {
  outline: none;
}

/* line 560, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.single-input-primary {
  display: block;
  width: 100%;
  line-height: 40px;
  border: 1px solid transparent;
  outline: none;
  background: #f9f9ff;
  padding: 0 20px;
}

/* line 568, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.single-input-primary:focus {
  outline: none;
  border: 1px solid #53C9BB;
}

/* line 574, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.single-input-accent {
  display: block;
  width: 100%;
  line-height: 40px;
  border: 1px solid transparent;
  outline: none;
  background: #f9f9ff;
  padding: 0 20px;
}

/* line 582, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.single-input-accent:focus {
  outline: none;
  border: 1px solid #eb6b55;
}

/* line 588, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.single-input-secondary {
  display: block;
  width: 100%;
  line-height: 40px;
  border: 1px solid transparent;
  outline: none;
  background: #f9f9ff;
  padding: 0 20px;
}

/* line 596, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.single-input-secondary:focus {
  outline: none;
  border: 1px solid #f09359;
}

/* line 602, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.default-switch {
  width: 35px;
  height: 17px;
  border-radius: 8.5px;
  background: #f9f9ff;
  position: relative;
  cursor: pointer;
}

/* line 609, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.default-switch input {
  position: absolute;
  left: 0;
  top: 0;
  right: 0;
  bottom: 0;
  width: 100%;
  height: 100%;
  opacity: 0;
  cursor: pointer;
}

/* line 619, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.default-switch input + label {
  position: absolute;
  top: 1px;
  left: 1px;
  width: 15px;
  height: 15px;
  border-radius: 50%;
  background: #53C9BB;
  -webkit-transition: all 0.2s;
  -moz-transition: all 0.2s;
  -o-transition: all 0.2s;
  transition: all 0.2s;
  box-shadow: 0px 4px 5px 0px rgba(0, 0, 0, 0.2);
  cursor: pointer;
}

/* line 632, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.default-switch input:checked + label {
  left: 19px;
}

/* line 639, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.primary-switch {
  width: 35px;
  height: 17px;
  border-radius: 8.5px;
  background: #f9f9ff;
  position: relative;
  cursor: pointer;
}

/* line 646, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.primary-switch input {
  position: absolute;
  left: 0;
  top: 0;
  right: 0;
  bottom: 0;
  width: 100%;
  height: 100%;
  opacity: 0;
}

/* line 655, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.primary-switch input + label {
  position: absolute;
  left: 0;
  top: 0;
  right: 0;
  bottom: 0;
  width: 100%;
  height: 100%;
}

/* line 663, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.primary-switch input + label:before {
  content: "";
  position: absolute;
  left: 0;
  top: 0;
  right: 0;
  bottom: 0;
  width: 100%;
  height: 100%;
  background: transparent;
  border-radius: 8.5px;
  cursor: pointer;
  -webkit-transition: all 0.2s;
  -moz-transition: all 0.2s;
  -o-transition: all 0.2s;
  transition: all 0.2s;
}

/* line 677, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.primary-switch input + label:after {
  content: "";
  position: absolute;
  top: 1px;
  left: 1px;
  width: 15px;
  height: 15px;
  border-radius: 50%;
  background: #fff;
  -webkit-transition: all 0.2s;
  -moz-transition: all 0.2s;
  -o-transition: all 0.2s;
  transition: all 0.2s;
  box-shadow: 0px 4px 5px 0px rgba(0, 0, 0, 0.2);
  cursor: pointer;
}

/* line 693, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.primary-switch input:checked + label:after {
  left: 19px;
}

/* line 696, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.primary-switch input:checked + label:before {
  background: #53C9BB;
}

/* line 704, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.confirm-switch {
  width: 35px;
  height: 17px;
  border-radius: 8.5px;
  background: #f9f9ff;
  position: relative;
  cursor: pointer;
}

/* line 711, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.confirm-switch input {
  position: absolute;
  left: 0;
  top: 0;
  right: 0;
  bottom: 0;
  width: 100%;
  height: 100%;
  opacity: 0;
}

/* line 720, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.confirm-switch input + label {
  position: absolute;
  left: 0;
  top: 0;
  right: 0;
  bottom: 0;
  width: 100%;
  height: 100%;
}

/* line 728, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.confirm-switch input + label:before {
  content: "";
  position: absolute;
  left: 0;
  top: 0;
  right: 0;
  bottom: 0;
  width: 100%;
  height: 100%;
  background: transparent;
  border-radius: 8.5px;
  -webkit-transition: all 0.2s;
  -moz-transition: all 0.2s;
  -o-transition: all 0.2s;
  transition: all 0.2s;
  cursor: pointer;
}

/* line 742, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.confirm-switch input + label:after {
  content: "";
  position: absolute;
  top: 1px;
  left: 1px;
  width: 15px;
  height: 15px;
  border-radius: 50%;
  background: #fff;
  -webkit-transition: all 0.2s;
  -moz-transition: all 0.2s;
  -o-transition: all 0.2s;
  transition: all 0.2s;
  box-shadow: 0px 4px 5px 0px rgba(0, 0, 0, 0.2);
  cursor: pointer;
}

/* line 758, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.confirm-switch input:checked + label:after {
  left: 19px;
}

/* line 761, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.confirm-switch input:checked + label:before {
  background: #4cd3e3;
}

/* line 769, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.primary-checkbox {
  width: 16px;
  height: 16px;
  border-radius: 3px;
  background: #f9f9ff;
  position: relative;
  cursor: pointer;
}

/* line 776, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.primary-checkbox input {
  position: absolute;
  left: 0;
  top: 0;
  right: 0;
  bottom: 0;
  width: 100%;
  height: 100%;
  opacity: 0;
}

/* line 785, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.primary-checkbox input + label {
  position: absolute;
  left: 0;
  top: 0;
  right: 0;
  bottom: 0;
  width: 100%;
  height: 100%;
  border-radius: 3px;
  cursor: pointer;
  border: 1px solid #f1f1f1;
}

/* line 798, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.primary-checkbox input:checked + label {
  background: url(../img/elements/primary-check.png) no-repeat center center/cover;
  border: none;
}

/* line 806, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.confirm-checkbox {
  width: 16px;
  height: 16px;
  border-radius: 3px;
  background: #f9f9ff;
  position: relative;
  cursor: pointer;
}

/* line 813, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.confirm-checkbox input {
  position: absolute;
  left: 0;
  top: 0;
  right: 0;
  bottom: 0;
  width: 100%;
  height: 100%;
  opacity: 0;
}

/* line 822, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.confirm-checkbox input + label {
  position: absolute;
  left: 0;
  top: 0;
  right: 0;
  bottom: 0;
  width: 100%;
  height: 100%;
  border-radius: 3px;
  cursor: pointer;
  border: 1px solid #f1f1f1;
}

/* line 835, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.confirm-checkbox input:checked + label {
  background: url(../img/elements/success-check.png) no-repeat center center/cover;
  border: none;
}

/* line 843, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.disabled-checkbox {
  width: 16px;
  height: 16px;
  border-radius: 3px;
  background: #f9f9ff;
  position: relative;
  cursor: pointer;
}

/* line 850, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.disabled-checkbox input {
  position: absolute;
  left: 0;
  top: 0;
  right: 0;
  bottom: 0;
  width: 100%;
  height: 100%;
  opacity: 0;
}

/* line 859, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.disabled-checkbox input + label {
  position: absolute;
  left: 0;
  top: 0;
  right: 0;
  bottom: 0;
  width: 100%;
  height: 100%;
  border-radius: 3px;
  cursor: pointer;
  border: 1px solid #f1f1f1;
}

/* line 871, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.disabled-checkbox input:disabled {
  cursor: not-allowed;
  z-index: 3;
}

/* line 876, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.disabled-checkbox input:checked + label {
  background: url(../img/elements/disabled-check.png) no-repeat center center/cover;
  border: none;
}

/* line 884, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.primary-radio {
  width: 16px;
  height: 16px;
  border-radius: 8px;
  background: #f9f9ff;
  position: relative;
  cursor: pointer;
}

/* line 891, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.primary-radio input {
  position: absolute;
  left: 0;
  top: 0;
  right: 0;
  bottom: 0;
  width: 100%;
  height: 100%;
  opacity: 0;
}

/* line 900, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.primary-radio input + label {
  position: absolute;
  left: 0;
  top: 0;
  right: 0;
  bottom: 0;
  width: 100%;
  height: 100%;
  border-radius: 8px;
  cursor: pointer;
  border: 1px solid #f1f1f1;
}

/* line 913, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.primary-radio input:checked + label {
  background: url(../img/elements/primary-radio.png) no-repeat center center/cover;
  border: none;
}

/* line 921, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.confirm-radio {
  width: 16px;
  height: 16px;
  border-radius: 8px;
  background: #f9f9ff;
  position: relative;
  cursor: pointer;
}

/* line 928, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.confirm-radio input {
  position: absolute;
  left: 0;
  top: 0;
  right: 0;
  bottom: 0;
  width: 100%;
  height: 100%;
  opacity: 0;
}

/* line 937, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.confirm-radio input + label {
  position: absolute;
  left: 0;
  top: 0;
  right: 0;
  bottom: 0;
  width: 100%;
  height: 100%;
  border-radius: 8px;
  cursor: pointer;
  border: 1px solid #f1f1f1;
}

/* line 950, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.confirm-radio input:checked + label {
  background: url(../img/elements/success-radio.png) no-repeat center center/cover;
  border: none;
}

/* line 958, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.disabled-radio {
  width: 16px;
  height: 16px;
  border-radius: 8px;
  background: #f9f9ff;
  position: relative;
  cursor: pointer;
}

/* line 965, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.disabled-radio input {
  position: absolute;
  left: 0;
  top: 0;
  right: 0;
  bottom: 0;
  width: 100%;
  height: 100%;
  opacity: 0;
}

/* line 974, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.disabled-radio input + label {
  position: absolute;
  left: 0;
  top: 0;
  right: 0;
  bottom: 0;
  width: 100%;
  height: 100%;
  border-radius: 8px;
  cursor: pointer;
  border: 1px solid #f1f1f1;
}

/* line 986, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.disabled-radio input:disabled {
  cursor: not-allowed;
  z-index: 3;
}

/* line 991, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.disabled-radio input:checked + label {
  background: url(../img/elements/disabled-radio.png) no-repeat center center/cover;
  border: none;
}

/* line 999, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.default-select {
  height: 40px;
}

/* line 1001, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.default-select .nice-select {
  border: none;
  border-radius: 0px;
  height: 40px;
  background: #f9f9ff;
  padding-left: 20px;
  padding-right: 40px;
}

/* line 1008, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.default-select .nice-select .list {
  margin-top: 0;
  border: none;
  border-radius: 0px;
  box-shadow: none;
  width: 100%;
  padding: 10px 0 10px 0px;
}

/* line 1015, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.default-select .nice-select .list .option {
  font-weight: 300;
  -webkit-transition: all 0.3s ease 0s;
  -moz-transition: all 0.3s ease 0s;
  -o-transition: all 0.3s ease 0s;
  transition: all 0.3s ease 0s;
  line-height: 28px;
  min-height: 28px;
  font-size: 12px;
  padding-left: 20px;
}

/* line 1022, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.default-select .nice-select .list .option.selected {
  color: #53C9BB;
  background: transparent;
}

/* line 1026, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.default-select .nice-select .list .option:hover {
  color: #53C9BB;
  background: transparent;
}

/* line 1033, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.default-select .current {
  margin-right: 50px;
  font-weight: 300;
}

/* line 1037, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.default-select .nice-select::after {
  right: 20px;
}

/* line 1042, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.form-select {
  height: 40px;
  width: 100%;
}

/* line 1045, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.form-select .nice-select {
  border: none;
  border-radius: 0px;
  height: 40px;
  background: #f9f9ff;
  padding-left: 45px;
  padding-right: 40px;
  width: 100%;
}

/* line 1053, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.form-select .nice-select .list {
  margin-top: 0;
  border: none;
  border-radius: 0px;
  box-shadow: none;
  width: 100%;
  padding: 10px 0 10px 0px;
}

/* line 1060, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.form-select .nice-select .list .option {
  font-weight: 300;
  -webkit-transition: all 0.3s ease 0s;
  -moz-transition: all 0.3s ease 0s;
  -o-transition: all 0.3s ease 0s;
  transition: all 0.3s ease 0s;
  line-height: 28px;
  min-height: 28px;
  font-size: 12px;
  padding-left: 45px;
}

/* line 1067, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.form-select .nice-select .list .option.selected {
  color: #53C9BB;
  background: transparent;
}

/* line 1071, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.form-select .nice-select .list .option:hover {
  color: #53C9BB;
  background: transparent;
}

/* line 1078, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.form-select .current {
  margin-right: 50px;
  font-weight: 300;
}

/* line 1082, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.form-select .nice-select::after {
  right: 20px;
}

/* line 1086, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.mt-10 {
  margin-top: 10px;
}

/* line 1089, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.section-top-border {
  padding: 50px 0;
  border-top: 1px dotted #eee;
}

/* line 1093, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.mb-30 {
  margin-bottom: 30px;
}

/* line 1096, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.mt-30 {
  margin-top: 30px;
}

/* line 1099, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_elements.scss */
.switch-wrap {
  margin-bottom: 10px;
}

/******** gallery css here *********/
/* line 3, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_gallery.scss */
.gallery_part .gallery_tittle {
  text-align: center;
  margin-bottom: 100px;
}

@media (max-width: 991px) {
  /* line 3, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_gallery.scss */
  .gallery_part .gallery_tittle {
    margin-bottom: 50px;
  }
}

/* line 9, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_gallery.scss */
.gallery_part .gallery_tittle p {
  font-size: 30px;
  line-height: 40px;
  color: #1F1F1F;
}

@media (max-width: 991px) {
  /* line 9, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_gallery.scss */
  .gallery_part .gallery_tittle p {
    font-size: 20px;
    line-height: 30px;
  }
}

/* line 19, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_gallery.scss */
.gallery_part .single_gallery_part {
  display: inline-block;
  margin-bottom: 30px;
  position: relative;
  z-index: 1;
  display: block;
}

/* line 25, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_gallery.scss */
.gallery_part .single_gallery_part img {
  border-radius: 5px;
  width: 100%;
}

/* line 29, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_gallery.scss */
.gallery_part .single_gallery_part i {
  font-size: 40px;
  color: #fff;
  position: absolute;
  left: 0;
  right: 0;
  margin: 0 auto;
  text-align: center;
  z-index: 2;
  top: 45%;
  opacity: 0;
  visibility: hidden;
  -webkit-transition: 0.5s;
  transition: 0.5s;
}

/* line 43, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_gallery.scss */
.gallery_part .single_gallery_part:after {
  position: absolute;
  content: "";
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  background-color: #FF5B5B;
  z-index: 1;
  opacity: 0;
  visibility: hidden;
  -webkit-transition: 0.5s;
  transition: 0.5s;
}

/* line 57, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_gallery.scss */
.gallery_part .single_gallery_part:hover i {
  opacity: 1;
  visibility: visible;
}

/* line 61, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_gallery.scss */
.gallery_part .single_gallery_part:hover:after {
  opacity: .3;
  visibility: visible;
}

/******** gallery css end *********/
/******** details part css here*********/
/* line 2, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_details_part.scss */
.details_part {
  padding: 130px 0 100px;
}

@media (max-width: 991px) {
  /* line 2, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_details_part.scss */
  .details_part {
    padding: 70px 0 40px;
  }
}

@media only screen and (min-width: 992px) and (max-width: 1200px) {
  /* line 2, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_details_part.scss */
  .details_part {
    padding: 80px 0 50px;
  }
}

/* line 10, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_details_part.scss */
.details_part .single_abopt_part {
  padding: 40px;
  border: 1px solid #E5E5E5;
  text-align: center;
  margin-bottom: 30px;
}

/* line 15, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_details_part.scss */
.details_part .single_abopt_part img {
  max-width: 160px;
  margin: 0 auto;
  display: block;
}

/* line 20, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_details_part.scss */
.details_part .single_abopt_part span {
  font-size: 16px;
  text-transform: capitalize;
  color: #FF5B5B;
  margin-top: 18px;
  display: inline-block;
}

/* line 27, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_details_part.scss */
.details_part .single_abopt_part h4 {
  font-size: 30px;
  font-weight: 500;
  margin: 6px 0 16px;
}

/* line 32, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_details_part.scss */
.details_part .single_abopt_part p {
  font-size: 16px;
}

/* line 35, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_details_part.scss */
.details_part .single_abopt_part .btn_1 {
  background-color: #FF5B5B;
  margin-top: 27px;
}

/* line 40, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_details_part.scss */
.details_part .details_part_btn {
  margin-top: 70px;
}

/* line 42, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_details_part.scss */
.details_part .details_part_btn .btn_1 {
  padding: 20px 63px;
}

/******** details part css end*********/
/* line 2, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area {
  background-image: url(<%=request.getContextPath() %>/img/footer_bg.png);
  background-repeat: no-repeat;
  background-position: top;
  background-size: cover;
}

/* line 9, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .subscribe_part_text h2 {
  color: #fff;
  font-size: 30px;
  font-weight: 400;
}

/* line 14, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .subscribe_part_text p {
  color: #fff;
}

/* line 17, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .subscribe_part_text .subscribe_form {
  margin-top: 40px;
  padding: 0 50px;
}

@media (max-width: 991px) {
  /* line 17, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
  .footer_area .subscribe_part_text .subscribe_form {
    padding: 0;
  }
}

/* line 23, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .subscribe_part_text .subscribe_form input {
  height: 69px;
  padding: 10px 10px 10px 27px;
  border: 1px solid #fff;
  text-transform: capitalize;
}

@media (max-width: 576px) {
  /* line 23, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
  .footer_area .subscribe_part_text .subscribe_form input {
    display: block;
    width: 100%;
    margin-bottom: 15px;
    border-radius: 5px;
    height: 50px;
  }
}

@media (max-width: 576px) {
  /* line 37, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
  .footer_area .subscribe_part_text .subscribe_form .subscribe_btn {
    display: block;
    width: 100%;
  }
}

/* line 43, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .subscribe_part_text .subscribe_form .btn_1 {
  padding: 25px 35px;
  border-radius: 0 5px 5px 0;
  background-color: #FF5B5B;
  cursor: pointer;
}

@media (max-width: 576px) {
  /* line 43, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
  .footer_area .subscribe_part_text .subscribe_form .btn_1 {
    display: block !important;
    width: 100%;
    margin-bottom: 15px;
    border-radius: 5px;
    padding: 15px 35px;
  }
}

/* line 58, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .form-control:focus {
  box-shadow: none;
}

@media (max-width: 991px) {
  /* line 61, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
  .footer_area .single-footer-widget {
    margin-bottom: 30px;
  }
}

/* line 66, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .single-footer-widget p {
  color: #7b838a;
}

/* line 70, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .single-footer-widget h4 {
  color: #fff;
  font-style: inherit;
  margin-bottom: 30px;
  font-weight: 400;
  font-size: 22px;
}

@media (max-width: 1024px) {
  /* line 70, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
  .footer_area .single-footer-widget h4 {
    font-size: 18px;
  }
}

@media (max-width: 991px) {
  /* line 70, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
  .footer_area .single-footer-widget h4 {
    margin-bottom: 15px;
  }
}

/* line 84, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .single-footer-widget ul li {
  margin-bottom: 14px;
}

/* line 86, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .single-footer-widget ul li a {
  color: #E5E5E5;
  -webkit-transition: 0.5s;
  transition: 0.5s;
  text-transform: capitalize;
}

/* line 90, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .single-footer-widget ul li a:hover {
  color: #53C9BB;
}

/* line 96, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .single-footer-widget .form-wrap {
  margin-top: 25px;
}

/* line 99, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .single-footer-widget input {
  height: 48px;
  border: none;
  width: 67% !important;
  font-weight: 400;
  background: transparent;
  padding-left: 20px;
  border-radius: 0;
  font-size: 14px;
  padding: 10px;
  border: 1px solid #e1e1e1;
  color: #999999;
}

/* line 112, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .single-footer-widget input:focus {
  outline: none;
  box-shadow: none;
}

/* line 121, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .single-footer-widget .click-btn {
  background-color: #53C9BB;
  color: #fff;
  border-radius: 0;
  border-top-left-radius: 0px;
  border-bottom-left-radius: 0px;
  padding: 8px 20px;
  border: 0;
  font-size: 12px;
  font-weight: 400;
  font-family: "Quicksand", sans-serif;
  position: relative;
  left: 0;
}

/* line 134, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .single-footer-widget .click-btn:focus {
  outline: none;
  box-shadow: none;
}

@media (max-width: 375px) {
  /* line 121, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
  .footer_area .single-footer-widget .click-btn {
    margin-top: 10px;
  }
}

@media (min-width: 400px) {
  /* line 121, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
  .footer_area .single-footer-widget .click-btn {
    left: -50px;
  }
}

/* line 148, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .footer-bottom {
  margin-top: 70px;
}

@media (max-width: 991px) {
  /* line 148, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
  .footer_area .footer-bottom {
    margin-top: 20px;
  }
}

/* line 163, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .footer-bottom .footer-social {
  text-align: center;
}

@media (max-width: 991px) {
  /* line 163, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
  .footer_area .footer-bottom .footer-social {
    text-align: left;
    margin-top: 30px;
  }
}

/* line 169, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .footer-bottom .footer-social a {
  background: rgba(255, 255, 255, 0.15);
  margin-left: 3px;
  width: 32px;
  display: inline-grid;
  text-align: center;
  height: 32px;
  align-content: center;
}

/* line 184, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .footer-bottom .footer-social a i, .footer_area .footer-bottom .footer-social a span {
  font-size: 14px;
}

/* line 190, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .copyright_text {
  border-top: 1px solid #FFFFFF;
  padding: 40px 0;
  display: flex;
  align-items: center;
  justify-content: space-between;
}

@media (max-width: 991px) {
  /* line 190, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
  .footer_area .copyright_text {
    padding: 30px 0;
    display: block;
  }
}

/* line 200, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .copyright_text p {
  color: #fff;
}

@media (max-width: 991px) {
  /* line 200, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
  .footer_area .copyright_text p {
    margin-top: 20px;
  }
}

/* line 205, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .copyright_text p a {
  color: #FF5B5B;
}

/* line 1, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_breadcrumb.scss */
.breadcrumb_bg {
  background-image: url("../img/breadcrumb.png");
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

/* line 4, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_breadcrumb.scss */
.breadcrumb {
  position: relative;
  z-index: 1;
  margin-bottom: 0px;
}

/* line 8, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_breadcrumb.scss */
.breadcrumb:after {
  position: absolute;
  content: "";
  left: 0;
  bottom: 0;
  width: 100%;
  height: 64px;
  background-image: url(../img/breadcrumb_sharp.png);
}

/* line 17, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_breadcrumb.scss */
.breadcrumb .breadcrumb_iner {
  height: 400px;
  width: 100%;
  display: table;
}

/* line 21, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_breadcrumb.scss */
.breadcrumb .breadcrumb_iner .breadcrumb_iner_item {
  display: table-cell;
  vertical-align: middle;
}

/* line 24, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_breadcrumb.scss */
.breadcrumb .breadcrumb_iner .breadcrumb_iner_item h1 {
  font-size: 60px;
  font-weight: 400;
  text-transform: capitalize;
}

@media (max-width: 576px) {
  /* line 24, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_breadcrumb.scss */
  .breadcrumb .breadcrumb_iner .breadcrumb_iner_item h1 {
    font-size: 35px;
  }
}

@media only screen and (min-width: 576px) and (max-width: 767px) {
  /* line 24, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_breadcrumb.scss */
  .breadcrumb .breadcrumb_iner .breadcrumb_iner_item h1 {
    font-size: 35px;
  }
}

@media only screen and (min-width: 768px) and (max-width: 991px) {
  /* line 24, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_breadcrumb.scss */
  .breadcrumb .breadcrumb_iner .breadcrumb_iner_item h1 {
    font-size: 40px;
  }
}

/* line 41, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_breadcrumb.scss */
.breadcrumb .breadcrumb_iner .breadcrumb_iner_item p {
  font-size: 15px;
  color: 8a8a8a;
}

/* line 45, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_breadcrumb.scss */
.breadcrumb .breadcrumb_iner .breadcrumb_iner_item span {
  margin: 0px 5px;
  font-size: 12px;
}

/* line 2, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area {
  background-image: url(<%=request.getContextPath() %>/img/footer_bg.png);
  background-repeat: no-repeat;
  background-position: top;
  background-size: cover;
}

/* line 9, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .subscribe_part_text h2 {
  color: #fff;
  font-size: 30px;
  font-weight: 400;
}

/* line 14, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .subscribe_part_text p {
  color: #fff;
}

/* line 17, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .subscribe_part_text .subscribe_form {
  margin-top: 40px;
  padding: 0 50px;
}

@media (max-width: 991px) {
  /* line 17, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
  .footer_area .subscribe_part_text .subscribe_form {
    padding: 0;
  }
}

/* line 23, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .subscribe_part_text .subscribe_form input {
  height: 69px;
  padding: 10px 10px 10px 27px;
  border: 1px solid #fff;
  text-transform: capitalize;
}

@media (max-width: 576px) {
  /* line 23, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
  .footer_area .subscribe_part_text .subscribe_form input {
    display: block;
    width: 100%;
    margin-bottom: 15px;
    border-radius: 5px;
    height: 50px;
  }
}

@media (max-width: 576px) {
  /* line 37, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
  .footer_area .subscribe_part_text .subscribe_form .subscribe_btn {
    display: block;
    width: 100%;
  }
}

/* line 43, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .subscribe_part_text .subscribe_form .btn_1 {
  padding: 25px 35px;
  border-radius: 0 5px 5px 0;
  background-color: #FF5B5B;
  cursor: pointer;
}

@media (max-width: 576px) {
  /* line 43, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
  .footer_area .subscribe_part_text .subscribe_form .btn_1 {
    display: block !important;
    width: 100%;
    margin-bottom: 15px;
    border-radius: 5px;
    padding: 15px 35px;
  }
}

/* line 58, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .form-control:focus {
  box-shadow: none;
}

@media (max-width: 991px) {
  /* line 61, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
  .footer_area .single-footer-widget {
    margin-bottom: 30px;
  }
}

/* line 66, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .single-footer-widget p {
  color: #7b838a;
}

/* line 70, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .single-footer-widget h4 {
  color: #fff;
  font-style: inherit;
  margin-bottom: 30px;
  font-weight: 400;
  font-size: 22px;
}

@media (max-width: 1024px) {
  /* line 70, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
  .footer_area .single-footer-widget h4 {
    font-size: 18px;
  }
}

@media (max-width: 991px) {
  /* line 70, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
  .footer_area .single-footer-widget h4 {
    margin-bottom: 15px;
  }
}

/* line 84, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .single-footer-widget ul li {
  margin-bottom: 14px;
}

/* line 86, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .single-footer-widget ul li a {
  color: #E5E5E5;
  -webkit-transition: 0.5s;
  transition: 0.5s;
  text-transform: capitalize;
}

/* line 90, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .single-footer-widget ul li a:hover {
  color: #53C9BB;
}

/* line 96, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .single-footer-widget .form-wrap {
  margin-top: 25px;
}

/* line 99, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .single-footer-widget input {
  height: 48px;
  border: none;
  width: 67% !important;
  font-weight: 400;
  background: transparent;
  padding-left: 20px;
  border-radius: 0;
  font-size: 14px;
  padding: 10px;
  border: 1px solid #e1e1e1;
  color: #999999;
}

/* line 112, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .single-footer-widget input:focus {
  outline: none;
  box-shadow: none;
}

/* line 121, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .single-footer-widget .click-btn {
  background-color: #53C9BB;
  color: #fff;
  border-radius: 0;
  border-top-left-radius: 0px;
  border-bottom-left-radius: 0px;
  padding: 8px 20px;
  border: 0;
  font-size: 12px;
  font-weight: 400;
  font-family: "Quicksand", sans-serif;
  position: relative;
  left: 0;
}

/* line 134, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .single-footer-widget .click-btn:focus {
  outline: none;
  box-shadow: none;
}

@media (max-width: 375px) {
  /* line 121, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
  .footer_area .single-footer-widget .click-btn {
    margin-top: 10px;
  }
}

@media (min-width: 400px) {
  /* line 121, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
  .footer_area .single-footer-widget .click-btn {
    left: -50px;
  }
}

/* line 148, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .footer-bottom {
  margin-top: 70px;
}

@media (max-width: 991px) {
  /* line 148, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
  .footer_area .footer-bottom {
    margin-top: 20px;
  }
}

/* line 163, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .footer-bottom .footer-social {
  text-align: center;
}

@media (max-width: 991px) {
  /* line 163, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
  .footer_area .footer-bottom .footer-social {
    text-align: left;
    margin-top: 30px;
  }
}

/* line 169, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .footer-bottom .footer-social a {
  background: rgba(255, 255, 255, 0.15);
  margin-left: 3px;
  width: 32px;
  display: inline-grid;
  text-align: center;
  height: 32px;
  align-content: center;
}

/* line 184, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .footer-bottom .footer-social a i, .footer_area .footer-bottom .footer-social a span {
  font-size: 14px;
}

/* line 190, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .copyright_text {
  border-top: 1px solid #FFFFFF;
  padding: 40px 0;
  display: flex;
  align-items: center;
  justify-content: space-between;
}

@media (max-width: 991px) {
  /* line 190, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
  .footer_area .copyright_text {
    padding: 30px 0;
    display: block;
  }
}

/* line 200, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .copyright_text p {
  color: #fff;
}

@media (max-width: 991px) {
  /* line 200, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
  .footer_area .copyright_text p {
    margin-top: 20px;
  }
}

/* line 205, /Applications/MAMP/htdocs/palash/cl/august 2019/198 Animal adoption/198 Animal adoption html/sass/_footer.scss */
.footer_area .copyright_text p a {
  color: #FF5B5B;
}

//# sourceMappingURL=<%=request.getContextPath() %>/css/style.map 
</style>
</head>
<body>

</body>
</html>