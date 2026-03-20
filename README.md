# tidiy-proxy

tidiy.net 反向代理，部署在 Fly.io 香港节点，供大陆直连使用。

## 部署

1. 安装 [Fly CLI](https://fly.io/docs/hands-on/install-flyctl/)
2. 登录：`fly auth login`
3. 部署：`fly launch --no-deploy` 然后 `fly deploy`

## 使用

部署成功后访问 `https://tidiy-proxy.fly.dev/v1` 作为 tidiy API 的 baseUrl。
