/*
 * 登録前チェック
 */
function confirmMessage() {
    var id = document.getElementById("id").value;
    var mail = document.getElementById("mail").value;
    var pass = document.getElementById("password").value;
    var conf = document.getElementById("confirm-password").value;

    // 必須チェック
    if((id == "") || (mail == "") || (pass == "") || (conf == "")) {
        alert("必須項目が入力されていません");
        return false;
    }

    // パスワードチェック
    if(pass != conf) {
        alert("パスワードが一致していません");
        return false;
    }

    if(passwordLevel < 3) {
        return confirm("パスワード強度が弱いですが良いですか？");
    }
    return true;
}
