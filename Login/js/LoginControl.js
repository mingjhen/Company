var sql_account;//資料庫內帳號
var sql_password;//資料庫內密碼
var msg;//訊息
var Input_account;//輸入帳號
var Input_password;//輸入密碼

sql_account = "admin";
sql_password = "12345";
function GetAccount() {
    Input_account = document.getElementById("Account").value;
    Input_password = document.getElementById("Password").value;
    if (Input_account == sql_account && Input_password == sql_password) {
        //成功登入
        window.location.href = 'http://localhost:1164/GIS-MRT_CK570J/Default.aspx';
    } else if (Input_account == sql_account && Input_password != sql_password) {
        //密碼錯誤
        //alert("密碼錯誤");
    } else if (Input_account != sql_account && Input_password == sql_password) {
        //帳號錯誤
        //alert("帳號錯誤");
    } else if (Input_account != sql_account && Input_password != sql_password) {
        //帳號密碼都錯誤
        //alert("帳號密碼都錯誤");
    }


    //alert("account：" + A + "   password：" + P);
    //confirm(A+P,"標題啊");
}

//成功抓取到function則進入
function success(result, context, method) {
    if (method == 'Account') {
        alert(result);
        //去判斷

    }
}

function CheckAccount(obj) {
    var ID;
    var msg = obj.value;
    Input_account = obj.value;

    //sql_password =

    //去判斷帳號
    //PageMethods.Account(Input_account, success, null);

    //alert(sql_password);
    //msg += "這是帳號哦哦哦";

    if (msg == '') {
        $('#account_prompt').attr("class", "fa fa-times-circle-o fa-3x");
        $('#account_prompt').css("color", "red");
        //document.getElementById("Suc").style.display = "none";
        //document.getElementById("Err").style.display = "block";
        //$('#Err').css("width", "50px");
        //$('#Err').css("color", "red");
        //msg = "Don't leave a blank！";
        //msg = "帳號不可為空白哦";
        //$('#AccountRemind').css("padding-top", "7px");
        //$('#AccountRemind').css("color", "red");
        //$('#AccountRemind').html(msg);
    }
    else if (msg == 'admin') {
        $('#account_prompt').attr("class", "fa fa-check-circle fa-3x");
        $('#account_prompt').css("color", "green");
        //document.getElementById("Err").style.display = "none";
        //document.getElementById("Suc").style.display = "block";
        //$('#Suc').css("width", "50px");
        //$('#Suc').css("color", "green");
        //msg = "Your account exist！Please input password！";
        //msg = "這個帳號有存在哦!";
        //$('#AccountRemind').css("padding-top", "7px");
        //$('#AccountRemind').css("color", "green");
        //$('#AccountRemind').html(msg);
    }
    else {
        $('#account_prompt').attr("class", "fa fa-times-circle-o fa-3x");
        $('#account_prompt').css("color", "red");
        //document.getElementById("Suc").style.display = "none";
        //document.getElementById("Err").style.display = "block";
        //$('#Err').css("width", "50px");
        //$('#Err').css("color", "red");
        //msg = "Your account does not exist！";
        //msg = "此帳號不存在!";
        //$('#AccountRemind').css("padding-top", "7px");
        //$('#AccountRemind').css("color", "red");
        //$('#AccountRemind').html(msg);
    }

}

function LinkSQL() {
    //宣告連結物件 
    var oCon = new ActiveXObject("ADODB.Connection")
    //建立連結字串 
    var linkstr = "Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\eva\Desktop\工作\App_Data\Database.mdf;Integrated Security=True"
    //建立連結 
    oCon.open(linkstr);
    //輸入資料值123到Test表單中,欄位名稱fff 
    var insert_obj = oCon.Execute("insert into Test(fff) values ('123')");
    //將查詢aaa表單的結果輸入到oTable這個物件中 
    var oTable = oCon.Execute("select*from Test");
    //顯示Test表單的第1個欄位的第1個值 
    alert(oTable.Fields(0).Value);
}