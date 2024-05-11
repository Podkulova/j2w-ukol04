[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    [#include "_common/head.ftlh"]
</head>
<body>
<div class="detail">
    <div class="vizitka">
        <div class="jmeno">Dita (Přikrylová) Formánková</div>
        <div class="firma">Czechitas z. s.</div>
        <div class="udaje">
            <div class="adresa">
                <div>Václavské náměstí 837/11</div>
                <div><span>11000</span> Praha 1</div>
            </div>
            <div class="kontakty">
                <div><i class="bi bi-at"></i> dita@example.com</div>
                <div><i class="bi bi-phone"></i> +420 800123456</div>
                <div><i class="bi bi-globe"></i> www.czechitas.cz</div>
            </div>
        </div>
    </div>

    <div class="mapa">
        <iframe style="border:none" src="https://frame.mapy.cz/?q=${"Václavské náměstí 837/11, Praha"?url("UTF-8")}" width="100%" height="100%" frameborder="0"></iframe>
    </div>

    <nav>
        <a href="/">◂ zpět na seznam</a>
    </nav>
</div>
</body>
</html>
