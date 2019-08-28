# git-ftp-action
Uses [git-ftp](https://github.com/git-ftp/git-ftp) and [GitHub actions](https://github.com/features/actions) to deploy a GitHub project to a FTP server.

## Usage
```
- name: GIT-FTP Deploy
  uses: sebastianpopp/git-ftp-action@master
  env: 
    FTP_DEST: ftp://${{secrets.FTP_HOST}}:${{secrets.FTP_PORT}}/public_html
    FTP_USER: ${{secrets.FTP_USER}}
    FTP_PWD: ${{secrets.FTP_PWD}}
    # Requires secrets to be added to the repo (Settings > Secrets)
```
