# Introduction

This repository is an Interface Language Pack for the GL.iNet Router SDK for localisation of GL.iNet products.

GL.iNet ensures the provision and maintenance of English and Chinese language packs for the interface, but we recognize that users worldwide seek to access the interface in their native language, as it is more familiar to them. Therefore, we have made the interface available for translation and sought assistance from dedicated users. Other languages have been translated with the generous help of our users.
It is important to note that GL.iNet cannot guarantee the completeness or quality of language packs other than those in English and Chinese.

# How to Packs

1. Find the matching Release from the [Releases](https://github.com/gl-inet/router-sdk-languages/releases) in this repository based on your firmware version.

2. Download the `gl-router-sdk-languages.zip` file provided with the Release.

3. Unzip the `gl-router-sdk-languages.zip` archive and find the JSON file for the required language. The filename should be `release.[code].json`, where `[code]` is the language code, as follows:
  * `de`: Deutsch
  * `en`: English
  * `es`: Español
  * `fr`: Français
  * `it`: Italiano
  * `ja`: 日本語
  * `zh-cn`: 简体中文
  * `zh-tw`: 繁体中文

4. Add the file to the `/www/i18n/` path with readable permissions for your device accessed via SSH/SCP. If you want to add French, you should include the `/www/i18n/release.fr.json` file.

5. Open or refresh your device's web admin panel and click the language toggle button located in the top right corner. Here, you will be able to view the recently added languages.

It is expected that in future releases we will add the ability to install language packs in one click directly from the web admin panel.

# How to Submit Translations

## Accessing the Translation Project

All interface languages are submitted via [GL.iNet's Self-hosted Weblate](https://weblate.gl-inet.com/engage/router-sdk/?utm_source=widget). To access the Router SDK project, simply visit the website and browse the available interface language packs.

*Please note that the language packs on this translation platform are updated in sync with the firmware development, and may not be fully synchronized with the release version. It is advisable to avoid directly pulling language pack files from the translation platform.*

## Submitting Suggestions

Only registered users can submit suggestions or translations on the Platform. The platform is available for registration by providing your email address.

Once you have completed your registration, you can make suggestions on the platform.
If you are looking for text that you think is a problem with the interface:
1. Click on the Search tab (not the search box in the title bar) to go to the search page;
2. then paste the interface text into the search box and click Search;
3. In the search results, click on the correct string to go to the Modify page;
4. Edit the interface text in the input box and click Suggest.

If you would like to help us translate a language
1. Click on the Router SDK project and on the project page click on the Languages tab;
2. In the list of languages, click on the number in the Unfinished column of the line containing your native language to access the modified page;
3. In the input box, refer to English, enter the corresponding interface text of the language and then click on Suggest; after submitting the suggestion, the platform will automatically move on to the next untranslated text.

## Editorial Suggestions
1.We use `$$$$` as a replacement variable, and we also use it to mark text buttons. Please keep it when you translate. For example, here are two examples:
![](https://static.gl-inet.com/github/router-sdk-languages/edit_etc.1.png)
![](https://static.gl-inet.com/github/router-sdk-languages/edit_etc.2.png)

2.In addition, for numeric + unit type variables, we use `{}` to mark numeric variables and `|` to distinguish between singular and plural forms.
![](https://static.gl-inet.com/github/router-sdk-languages/edit_etc.3.png)

## Submit a translation or accept a suggestion

New registered users can only submit suggestions, they cannot directly edit the translation. This is why the save button is disabled on the edit page.

After you have submitted a certain amount of usable text, we will invite you to become a translator. You can take suggestions from other people or translate text directly.

# Translation Status

## Translation Progress by Language

We expect to officially release version 4.5.0 in November!
The current progress is as follows

![](https://static.gl-inet.com/github/router-sdk-languages/42BCC210-BD57-46d1-B7ED-9958754CDADD.png)

## Adding New Languages

If you would like to request support for additional languages and want to help us translate the language, please post a request to the [GL.iNet Official Forums](https://forum.gl-inet.com/) or [Issues](https://github.com/gl-inet/router-sdk-languages/) in this repository.  If more than five users offer to assist in the translation, we will introduce the new language.
