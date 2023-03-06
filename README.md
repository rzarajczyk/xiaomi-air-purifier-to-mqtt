# xiaomi-air-purifier-to-mqtt

## Usage in docker compose

```yaml
version: '3.2'
services:
  xiaomi-air-purifier-to-mqtt:
    container_name: xap
    image: rzarajczyk/xiaomi-air-purifier-to-mqtt:latest
    volumes:
      - ./config/xiaomi-air-purifier-to-mqtt.yaml:/app/config/config.yaml
    restart: unless-stopped
```

## Configuration

```yaml
mqtt:
  broker: <hostname>
  port: <port>
  username: <username>
  password: <passqord>

xiaomi-air-purifier:
  fetch-interval-seconds: 5  # how often should the Monitor be pulled
  id: xiaomi-air-purifier   # how will the device be identified in MQTT  
  ip: <device IP>
  token: <device token>

```