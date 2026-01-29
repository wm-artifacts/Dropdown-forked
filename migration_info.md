# 🚀 Migration Report

## 📌 Version: 11.13

- Updated .gitignore with new patterns `[generated-react-app/**, src/main/webapp/design-tokens/temp-tokens, src/main/webapp/design-tokens/app.override.css]`


- Added new default file `package-override.json` to /build-src/
- Added new default file `eslintrc-override.js` to /build-src/


- Removed aria label attribute from `1` page markup files


- Updated ui-build.js file
- Updated build.xml file


## 📌 Version: 11.10

- Updated ui-build.js file with fixes supporting concurrent builds


- Updated apache http logger package from org.apache.http.client to org.apache.hc.client5 in log4j2.xml


- Updated optimizeUIBuild default value to false in build.xml file


## 📌 Version: 11.9

- Updated ui-build.js and build.xml files


- Added languageBundleSources and serviceDefSources property with value as STATIC in .wmproject.properties
- Added app.apiUrl property in app.properties and made it configurable from all profile property files with empty value as default


- Updated Dockerfile which simplifies WaveMaker App Docker Image creation


## 📌 Version: 11.8

- Updated aria label attribute with values from hint attribute in `1` page markup files


- Updated `web.xml` file attributes from javax to Jakarta


## 📌 Version: 11.7

- Added the pattern `src/main/webapp/WEB-INF/prefabs/**/page.min.json` to `.gitignore` file


