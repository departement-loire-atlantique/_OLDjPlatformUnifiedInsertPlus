# jPlatformUnifiedInsertPlus

<p>
  <a href="https://travis-ci.org/organizations/departement-loire-atlantique">
    <img src="https://travis-ci.org/departement-loire-atlantique/jPlatformUnifiedInsertPlus.svg?branch=master" />
  </a>
  <a href="https://sonarcloud.io/organizations/departement-loire-atlantique">
    <img src="https://sonarcloud.io/api/project_badges/measure?project=departement-loire-atlantique_jPlatformUnifiedInsertPlus&metric=ncloc" />
    <img src="https://sonarcloud.io/api/project_badges/measure?project=departement-loire-atlantique_jPlatformUnifiedInsertPlus&metric=bugs" />
    <img src="https://sonarcloud.io/api/project_badges/measure?project=departement-loire-atlantique_jPlatformUnifiedInsertPlus&metric=code_smells" />
    <img src="https://sonarcloud.io/api/project_badges/measure?project=departement-loire-atlantique_jPlatformUnifiedInsertPlus&metric=coverage" />
    <img src="https://sonarcloud.io/api/project_badges/measure?project=departement-loire-atlantique_jPlatformUnifiedInsertPlus&metric=duplicated_lines_density" />
    <img src="https://sonarcloud.io/api/project_badges/measure?project=departement-loire-atlantique_jPlatformUnifiedInsertPlus&metric=sqale_rating" />
    <img src="https://sonarcloud.io/api/project_badges/measure?project=departement-loire-atlantique_jPlatformUnifiedInsertPlus&metric=alert_status" />
    <img src="https://sonarcloud.io/api/project_badges/measure?project=departement-loire-atlantique_jPlatformUnifiedInsertPlus&metric=reliability_rating" />
    <img src="https://sonarcloud.io/api/project_badges/measure?project=departement-loire-atlantique_jPlatformUnifiedInsertPlus&metric=security_rating" />
    <img src="https://sonarcloud.io/api/project_badges/measure?project=departement-loire-atlantique_jPlatformUnifiedInsertPlus&metric=sqale_index" />
    <img src="https://sonarcloud.io/api/project_badges/measure?project=departement-loire-atlantique_jPlatformUnifiedInsertPlus&metric=vulnerabilities" />
    </a>
</p>

## Insertion unifiée

La mécanique d'insertion unifiée permet de proposer à l'utilisateur l'insertion rapide de différents types de contenus.

Lors d'un ajout unifié dans un champ wysiwyg vers un contenu intégré, celui-ci est affiché avec la règle de gabarit suivant :
- Content => embed -> full
- Portlet => box -> full

Les contenus intégrés sont ajoutés dans le wysiwyg avec en JHtml : <jalios:media data-jalios-source="INFO_CONTENU" />
Les contenus sous forme de simple lien sont au format : <jalios:link data-jalios-id="ID_CONTENU" />

## Selection d'un contenu unifié

Propriété :
+ unified-insert.items.content.jsp: plugins/UnifiedInsertPlusPlugin/jsp/content/unifiedInsertContent.jsp
+ unified-insert.items.content.icon: glyph: glyphicons-article

Fichier :
+ plugins/UnifiedInsertPlusPlugin/jsp/content/unifiedInsertContent.jsp

Fichier natif modifié 
- work/doPubList.jsp
(Modification de la ligne 299 : ajout de data-jalios-source="<%= itPub.getId() %> )

## Contenus unifiés

- Youtube : <jalios:media data-jalios-source="URL_VIDEO_YOUTUBE" />
- Calameo
- SlideShare
- Flick
- SoundCloud
- Fragment HTML (seuls les utilisateurs habilités pour contribuer ce type de contenu)
- Liste de documents (Type de contenu repris de l'intranet) 
- Liste de sites
- Portlet


### TODO Liste de documents

### Calameo

Utilise l'url du 'contenu sur internet' pour la contribution.

Fichier :
+ plugins/UnifiedInsertPlusPlugin/jsp/media/url/mediaTemplateCalameo.jsp


### Flikr

Utilise l'url du 'contenu sur internet' pour la contribution.

Fichier :
+ plugins/UnifiedInsertPlusPlugin/jsp/media/url/mediaTemplateFlickr.jsp


