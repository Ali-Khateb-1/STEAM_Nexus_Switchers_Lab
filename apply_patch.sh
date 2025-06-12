#!/bin/bash

# استعادة المحتوى السابق في حال كان موجودًا
old_content=""
if [ -f "index.html" ]; then
    old_content=$(cat "index.html")
fi

# توليد الصفحة الرئيسية وتضمين التحديثات بوضوح
echo "<html>
<head>
    <title>الرئيسية - STEAM_Nexus_Switchers_Lab</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f8f9fa; color: #333; text-align: center; padding: 20px; }
        .container { max-width: 900px; margin: auto; background: white; padding: 20px; border-radius: 10px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); }
        h1 { color: #007BFF; }
        section { margin-bottom: 20px; padding: 15px; border-radius: 8px; background-color: #FFD700; }
        ul { list-style: none; padding: 0; }
        ul li { margin: 10px 0; }
        ul li a { text-decoration: none; color: #007BFF; font-weight: bold; }
    </style>
</head>
<body>

<div class='container'>
<header>
    <h1>🚀 STEAM Nexus Switchers Lab</h1>
</header>

<section>
    <h2>🆕 التحديثات الأخيرة</h2>
    <div style='font-size:18px; font-weight:bold;'>$(cat updates.html)</div>
</section>

<hr>

<section>
    <h2>📜 المحتوى السابق</h2>
    <div style='opacity: 0.8;'>$old_content</div>
</section>

<h2>🔗 التنقل بين المستودعات</h2>
<ul>
    <li><a href='../index.html'>🏠 الصفحة الرئيسية</a></li>
    <li><a href='../STEAM_Nexus_Switchers_Lab/updates.html'>🌀 Switchers Lab</a></li>
    <li><a href='../STEAM_Nexus_Switchers_Lab/STEAM-Forge/updates.html'>🔧 Forge</a></li>
    <li><a href='../STEAM_Nexus_Switchers_Lab/STEAM-Forge/STEAM_Data_Manager/updates.html'>📂 Data Manager</a></li>
    <li><a href='../my-online-store/updates.html'>🛒 متجر إلكتروني</a></li>
</ul>
</div>

</body></html>" > "index.html"

# تحديث المستودع عبر Git
git add index.html
git commit -m "📌 تحديث index.html في STEAM_Nexus_Switchers_Lab"
git push origin main

echo "✅ تم تنفيذ الباتش في STEAM_Nexus_Switchers_Lab بنجاح!"
