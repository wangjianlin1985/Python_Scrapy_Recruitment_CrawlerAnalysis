import request from '@/utils/request'

export function listJzzp(query) {
  return request({
    url: '/admin/permission/jzzp/',
    method: 'get',
    params: query
  })
}

export function tjbyxz() {
  return request({
    url: '/admin/permission/jzzp/tjbyxz/',
    method: 'get'
  })
}

export function tjbycity() {
  return request({
    url: '/admin/permission/jzzp/tjbycity/',
    method: 'get'
  })
}

export function tjbytype() {
  return request({
    url: '/admin/permission/jzzp/tjbytype/',
    method: 'get'
  })
}

export function tjbyxl() {
  return request({
    url: '/admin/permission/jzzp/tjbyxl/',
    method: 'get'
  })
}
export function tjbytime() {
  return request({
    url: '/admin/permission/jzzp/tjbytime/',
    method: 'get'
  })
}


