# Nicotine (soulseek client) vnc service for docker

## Usage

Start nicotine vnc server,  /Users/Music your sharing music map & /Users/Downloads your download map.

```bash
docker run --name=nicotine -v /Users/Music/:/home/nicotine/Music -v /Users/Downloads:/home/nicotine/Downloads -p 5900:5900 -d danielguerra/nicotine
```
& check
```bash
docker logs nicotine
```
After this use a vnc client to connect (dockerhost:5900)

login with your soulseek account
