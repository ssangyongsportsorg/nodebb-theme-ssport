<!DOCTYPE html>
<html lang="{function.localeToHTML, userLang, defaultLang}" {{{if languageDirection}}}data-dir="{languageDirection}" dir="{languageDirection}"{{{end}}} class="bg-gray-100 dark:bg-gray-900">
<head>
    <title>{browserTitle}</title>
    {{{each metaTags}}}{function.buildMetaTag}{{{end}}}
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    {{{each linkTags}}}{function.buildLinkTag}{{{end}}}

    <script>
        var config = JSON.parse('{{configJSON}}');
        var app = {
            user: JSON.parse('{{userJSON}}')
        };

        document.documentElement.style.setProperty('--panel-offset', `${localStorage.getItem('panelOffset') || 0}px`);
    </script>

    {{{if useCustomHTML}}}
    {{customHTML}}
    {{{end}}}
    {{{if useCustomCSS}}}
    <style>{{customCSS}}</style>
    {{{end}}}
</head>

<body class="font-sans text-gray-900 dark:text-gray-100">
    <a class="sr-only focus:not-sr-only focus:absolute focus:top-0 focus:left-0 bg-white dark:bg-gray-800 text-blue-600 dark:text-blue-400 p-3 m-3 z-50" href="#content">[[global:skip-to-content]]</a>
    <div class="min-h-screen flex">
        <!-- IMPORT partials/sidebar-left.tpl -->

        <main id="panel" class="flex-grow flex flex-col space-y-6 p-6">
            <!-- IMPORT partials/header/brand.tpl -->
            <script>
                const headerEl = document.getElementById('header-menu');
                if (headerEl) {
                    const rect = headerEl.getBoundingClientRect();
                    const offset = Math.max(0, rect.bottom);
                    document.documentElement.style.setProperty('--panel-offset', offset + `px`);
                } else {
                    document.documentElement.style.setProperty('--panel-offset', `0px`);
                }
            </script>
            <div id="content" class="container mx-auto max-w-7xl flex-grow">
                <!-- IMPORT partials/noscript/warning.tpl -->
                <!-- IMPORT partials/noscript/message.tpl -->
            </div>
        </main>
    </div>
</body>
</html>
