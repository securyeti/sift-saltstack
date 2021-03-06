include:
  - sift.repos
  - sift.packages
  - sift.python-packages

sift-version-file:
  file.managed:
    - name: /etc/sift-version
    - source: salt://VERSION
    - user: root
    - group: root
    - require:
      - sls: sift.repos
      - sls: sift.packages
      - sls: sift.python-packages
