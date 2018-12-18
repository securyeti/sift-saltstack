include:
  - sift.repos
  - sift.packages
  - sift.python-packages
  - sift.tools
  - sift.scripts
  - sift.config.tools
  - sift.config.folders
  - sift.config.hostname
  - sift.config.rclocal
  - sift.config.salt-minion
  - sift.config.samba
  - sift.config.symlinks
  - sift.config.timezone
  - sift.config.user.bash-aliases
  - sift.config.user.bash-rc
  - sift.config.user.folders
  - sift.config.user.pdfs
  - sift.config.user.rekall
  - sift.config.user.symlinks
  - sift.config.user.terminal
  #- sift.config.user.theme    # Likely to break a server build
  #- sift.config.user.unity    # Likely to break a server build
  - sift.config.user.user

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
      - sls: sift.tools
      - sls: sift.scripts
      - sls: sift.config.tools
      - sls: sift.config.folders
      - sls: sift.config.hostname
      - sls: sift.config.rclocal
      - sls: sift.config.salt-minion
      - sls: sift.config.samba
      - sls: sift.config.symlinks
      - sls: sift.config.timezone
      - sls: sift.config.user.bash-aliases
      - sls: sift.config.user.bash-rc
      - sls: sift.config.user.folders
      - sls: sift.config.user.pdfs
      - sls: sift.config.user.rekall
      - sls: sift.config.user.symlinks
      - sls: sift.config.user.terminal
      #- sls: sift.config.user.theme
      #- sls: sift.config.user.unity
      - sls: sift.config.user.user
