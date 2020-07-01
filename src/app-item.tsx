import React from 'react'
import { IApp, ILang } from './app-list-data'

function getLangText (lang: string | ILang): string {
  // @ts-ignore
  return typeof lang === 'string' ? lang : lang.en
}

export default function AppItem(props: IApp) {
  return (<div className="app-item">
    <a href={props.homeUrl} target="_blank" style={{display: 'block'}}>
      <h4>{props.name}</h4>
      <div>{getLangText(props.desc)}</div>
    </a>
  </div>)
}