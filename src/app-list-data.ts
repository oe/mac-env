export interface ILang {
  zh: string
  en: string
}

export interface IInstall {
  type: 'shell' | 'brew' | 'brew-cask'
  cmd: string | string[]
}

export interface IDocReference {
  title: string
  url: string
}

export interface IApp {
  // unique id for the app (just a custom string)
  id: string
  appType: 'cli' | 'gui'
  // app name
  name: string | ILang
  // app description
  desc: string | ILang
  // app web url
  homeUrl: string
  // categories for this app
  categories: ('essential' | 'dev' | 'utils' | 'design' | 'ent')[]
  // other tags
  tags: ('free' | 'paid' | 'freemium' | 'opensource')[]
  sourceUrl?: string
  // the way to install this app
  install: IInstall
  // app ids that this app depended on
  deps?: string[]
  // docs that can help user to make better use of it
  docs?: IDocReference[]
}

const apps: IApp[] = [
  {
    id: 'brew',
    appType: 'cli',
    name: 'Homebrew',
    desc: {
      en: 'The Missing Package Manager for macOS (or Linux)',
      zh: 'macOS（或 Linux）缺失的软件包的管理器'
    },
    homeUrl: 'https://brew.sh',
    categories: ['essential', 'utils'],
    tags: ['free', 'opensource'],
    sourceUrl: 'https://github.com/Homebrew/brew',
    install: {
      type: 'shell',
      cmd: '/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"'
    }
  },
  {
    id: 'alfred',
    appType: 'gui',
    name: 'Alfred',
    desc: {
      en: 'Alfred is an award-winning app for macOS which boosts your efficiency with hotkeys, keywords, text expansion and more.',
      zh: 'Mac上必备的效率软件, 让你手不离开键盘即可完全操控你的电脑: 搜索文件、启动软件、打开书签、搜索网络、查看IP、计算器、查词典、执行shell命令, 等等'
    },
    homeUrl: 'https://www.alfredapp.com',
    categories: ['essential', 'utils'],
    tags: ['freemium'],
    install: {
      type: 'brew-cask',
      cmd: 'alfred'
    },
    deps: ['brew']
  },
  {
    id: 'chrome',
    appType: 'gui',
    name: 'Google Chrome',
    desc: {
      en: 'The Missing Package Manager for macOS (or Linux)',
      zh: 'macOS（或 Linux）缺失的软件包的管理器'
    },
    homeUrl: 'https://www.google.com/chrome/',
    categories: ['essential', 'utils'],
    tags: ['free', 'opensource'],
    sourceUrl: 'https://chromium.googlesource.com/chromium/',
    install: {
      type: 'brew-cask',
      cmd: 'google-chrome'
    },
    deps: ['brew']
  },
  {
    id: 'chrome',
    appType: 'gui',
    name: 'Google Chrome',
    desc: {
      en: 'The Missing Package Manager for macOS (or Linux)',
      zh: 'macOS（或 Linux）缺失的软件包的管理器'
    },
    homeUrl: 'https://www.google.com/chrome/',
    categories: ['essential', 'utils'],
    tags: ['free', 'opensource'],
    sourceUrl: 'https://chromium.googlesource.com/chromium/',
    install: {
      type: 'brew-cask',
      cmd: 'google-chrome'
    },
    deps: ['brew']
  },

]


export default apps