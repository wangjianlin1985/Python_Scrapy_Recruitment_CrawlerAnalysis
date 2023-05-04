
# ================================================= #
# ************** mysql数据库 配置  ************** #
# ================================================= #
# 数据库类型 MYSQL/SQLITE3
DATABASE_TYPE = "MYSQL"
# 数据库地址
DATABASE_HOST = "127.0.0.1"
# 数据库端口
DATABASE_PORT = 3306
# 数据库用户名
DATABASE_USER = "root"
# 数据库密码
DATABASE_PASSWORD = "q1w2e3r4T%Y^U&MYSQL"
# 数据库名
DATABASE_NAME = "django-vue-admin"

# ================================================= #
# ************** mongodb 数据库配置  ************** #
# ================================================= #
MONGO_DATABASE_NAME = 'django-vue-admin'
MONGO_HOST = 'localhost'
MONGO_PORT = 27017

# ================================================= #
# ************** redis 数据库配置  ************** #
# ================================================= #
REDIS_DB = 1
REDIS_HOST = '127.0.0.1'
REDIS_PORT = 6379
REDIS_PASSWORD = 'q1w2e3r4T%Y^U&'

# ================================================= #
# ************** 默认配置  ************** #
# ================================================= #
# 只允许访问的ip地址列表
ALLOWED_HOSTS = ['*']
# 允许跨域源
CORS_ORIGIN_ALLOW_ALL = True
# 允许ajax请求携带cookie
CORS_ALLOW_CREDENTIALS = False
# 验证码状态
CAPTCHA_STATE = True
# 操作日志配置
API_LOG_ENABLE = True
API_LOG_METHODS = ['POST', 'DELETE', 'PUT'] # 'ALL' or ['POST', 'DELETE']
