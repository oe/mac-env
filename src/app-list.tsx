import React from 'react'
import AppItem from './app-item'
import appListData from './app-list-data'

export default function AppList () {
  return (<div>
    {
      appListData.map(item => <AppItem key={item.id} {...item}/>)
    }
  </div>)
}
