[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    [#include "_common/head.ftlh"]
</head>
<body>
<div class="seznam">
    [#list seznam as vizitka]
        <a href="/detail/${vizitka?index}">
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
        </a>
    [/#list]

    <a href="/nova">
        <div class="vizitka vizitka--nova">
            <svg width="100" height="100">
                <rect width="20" height="100" x="40" y="0" fill="white"/>
                <rect width="100" height="20" x="0" y="40" fill="white"/>
            </svg>
        </div>
    </a>
</div>
</body>
</html>
