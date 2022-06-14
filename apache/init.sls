install apache:
   pkg.installed:
     - pkgs:
       - httpd

index_html:
  file.mananged:
    - name: /var/www/html/index.html
    - user: apache
    - group: apache
    - mode: 644
    - source: salt://apache/templates/index.html

apache_service:
  service.running:
    - name: httpd
    - enable: True