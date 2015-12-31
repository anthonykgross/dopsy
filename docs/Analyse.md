# DoPSy
Docker + PHP7 & Symfony3


Probleme : Lors d'une recherche d'equipe dans un jeu en ligne (genre BoomBeach, lol, etc ..) la seule solution est d'envoyer une message sur un forum parmis 100message/sec.
- Site d'inscription de compte de jeux : Aujourd'hui boombeach (profil, stats du jeu, etc)
- Referencé les équipes
- Espace admin pour gestion d'équipe.

NB: Lien steam, classement par jeux, et par joueur


MUST HAVE :
- Site internet
- Compatible Smartphone & Tablette (responsive)
- Convivial


Techniquement :
- Back (Probleme principal) : Symfony 3,  PHP 7 //METIER
- Base de donnée
- Front (Probleme => MUST HAVE) : Bootstrap 4, SASS
- GULP (automatisation), BOWER (Ressource tiers front), COMPOSER (Resource tiers back) /* DEVELOPPEMENT*/
- Design : Sb Admin2 (/!\Bootstrap 3)

=> Dependances
- Symfony 3 = PHP7
    PHP7 = os particulier
- Base données = MySql
- Bootstrap 4 = SASS, jQuery
    SASS = NodeJS
- Gulp = NodeJs
- Bower = NodeJS 
- Composer = PHP7 (php-curl)

Serveurs :
- Serveur Web (NGINX)
- Serveur PHP7 (PHP FPM)
- Serveur Base de données (MySql)
