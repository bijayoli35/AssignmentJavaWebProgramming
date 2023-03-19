<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Calculator</title>
<style>
/* CSS styles for calculator */
.calculator {
  width: 270px;
  height: 450px;
  margin: 0 auto;
  background-color: #f3f3f3;
  padding: 20px;
  border-radius: 10px;
  box-shadow: 0px 5px 20px #bbb;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  position: absolute;
  left: 50%;
  top: 50%;
  transform: translate(-50%, -50%);
}

.calculator input[type="text"] {
  width: 92%;
  margin-bottom: 10px;
  padding: 10px;
  font-size: 24px;
  border-radius: 5px;
  border: none;
  box-shadow: 2px 2px 2px 2px #aaa;
  text-align: right;
}

.calculator input[type="button"] {
  width: 60px;
  height: 60px;
  margin: 5px;
  padding: 10px;
  font-size: 24px;
  border-radius: 50%;
  border: none;
  box-shadow: 2px 2px 5px #aaa;
  background-color: #fff;
  color: #555;
  cursor: pointer;
  transition: all 0.3s ease-in-out;
}

.calculator input[type="button"]:hover {
  background-color: #eee;
}

.calculator .row {
  display: flex;
  justify-content: center;
  align-items: center;
}

.calculator .row:first-of-type {
  margin-bottom: 10px;
}

.calculator .row:last-of-type {
  margin-top: 10px;
}

.calculator .equal {
  width: 130px;
}

.calculator .zero {
  width: 130px;
  margin-right: 10px;
}

</style>
</head>
<body>
    <div class="calculator">
        <form name="calcForm">
            <input type="text" name="result" value="" />
            <div class="row">
                <input type="button" value="7" onclick="calcForm.result.value += '7'" />
                <input type="button" value="8" onclick="calcForm.result.value += '8'" />
                <input type="button" value="9" onclick="calcForm.result.value += '9'" />
                <input type="button" value="+" onclick="calcForm.result.value += '+'" />
            </div>
            <div class="row">
                <input type="button" value="4" onclick="calcForm.result.value += '4'" />
                <input type="button" value="5" onclick="calcForm.result.value += '5'" />
                <input type="button" value="6" onclick="calcForm.result.value += '6'" />
                <input type="button" value="-" onclick="calcForm.result.value += '-'" />
            </div>
            <div class="row">
                <input type="button" value="1" onclick="calcForm.result.value += '1'" />
                <input type="button" value="2" onclick="calcForm.result.value += '2'" />
                <input type="button" value="3" onclick="calcForm.result.value += '3'" />
                <input type="button" value="*" onclick="calcForm.result.value += '*'" />
            </div>
            <div class="row">
                <input type="button" value="0" onclick="calcForm.result.value += '0'" />      
                <input type="button" value="(" onclick="calcForm.result.value += '('"/>
                <input type="button" value=")" onclick="calcForm.result.value += ')'"/>
                <input type="button" value="/" onclick="calcForm.result.value += '/'" />

            </div>
              <input type="button" value="C" onclick="calcForm.result.value = ''" />
              <input type="button" value="←" onclick="calcForm.result.value = calcForm.result.value.slice(0, -1)" />
              <input type="button" value="=" onclick="calcForm.result.value = eval(calcForm.result.value)" />
          </div>
        </form>
    </body>
    </html>
