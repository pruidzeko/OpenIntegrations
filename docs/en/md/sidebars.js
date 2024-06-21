﻿export default {
 docs: [
 
 {
 type: 'category',
 label: 'Welcome!',
 link: {type: 'doc', id:'Instructions/Start'},
 className: 'Start',
 items:[{type: 'autogenerated', dirName: 'Start'}]
 },

 {
 type: 'category',
 label: 'Messengers',
 className: 'Messenger',
 items: [
 { type: 'category', link: {type: 'doc', id:'Instructions/Telegram'}, label: 'Telegram', className: 'Telegram', items:[{type: 'autogenerated', dirName: 'Telegram'}]},
 { type: 'category', link: {type: 'doc', id:'Instructions/Viber'}, label: 'Viber', className: 'Viber', items:[{type: 'autogenerated', dirName: 'Viber'}]},
 { type: 'category', link: {type: 'doc', id:'Instructions/Slack'}, label: 'Slack', className: 'Slack', items:[{type: 'autogenerated', dirName: 'Slack'}]},
 ],
 },
 {
 type: 'category',
 label: 'Social networks',
 className: 'Social',
 items:[
 { type: 'category', link: {type: 'doc', id:'Instructions/VK'}, label: 'VK', className: 'VK', items:[{type: 'autogenerated', dirName: 'VK'}]},
 { type: 'category', link: {type: 'doc', id:'Instructions/Twitter'}, label: 'Twitter', className: 'Twitter', items:[{type: 'autogenerated', dirName: 'Twitter'}]},
 ],
 },
 {
 type: 'category',
 label: 'Databases and spreadsheets',
 className: 'Database',
 items:[
 { type: 'category', link: {type: 'doc', id:'Instructions/Airtable'}, label: 'Airtable', className: 'Airtable', items:[{type: 'autogenerated', dirName: 'Airtable'}]},
 { type: 'category', link: {type: 'doc', id:'Instructions/GoogleSheets'}, label: 'Google Sheets', className: 'GoogleSheets', items:[{type: 'autogenerated', dirName: 'Google_Sheets'}]},
 ],
 },
 {
 type: 'category',
 label: 'File-hosting services',
 className: 'Folder',
 items:[
 { type: 'category', link: {type: 'doc', id:'Instructions/GoogleDrive'}, label: 'Google Drive', className: 'GoogleDrive', items:[{type: 'autogenerated', dirName: 'Google_Drive'}]},
 { type: 'category', link: {type: 'doc', id:'Instructions/YandexDisk'}, label: 'Yandex Disk', className: 'YandexDisk', items:[{type: 'autogenerated', dirName: 'Yandex_Disk'}]},
 { type: 'category', link: {type: 'doc', id:'Instructions/Dropbox'}, label: 'Dropbox', className: 'Dropbox', items:[{type: 'autogenerated', dirName: 'Dropbox'}]},
 ],
 },
 {
 type: 'category',
 label: 'Complete solutions (CMS, CRM)',
 className: 'CRM',
 items:[
 { type: 'category', link: {type: 'doc', id:'Instructions/Bitrix24'}, label: 'Bitrix24', className: 'Bitrix24', items:[{type: 'autogenerated', dirName: 'Bitrix24'}]},
 ],
 },
 {
 type: 'category',
 label: 'Planning and projects managment ',
 className: 'Calendar',
 items:[
 { type: 'category', link: {type: 'doc', id:'Instructions/GoogleCalendar'}, label: 'Google Calendar', className: 'GoogleCalendar', items:[{type: 'autogenerated', dirName: 'Google_Calendar'}]},
 { type: 'category', link: {type: 'doc', id:'Instructions/Notion'}, label: 'Notion', className: 'Notion', items:[{type: 'autogenerated', dirName: 'Notion'}]},
 ],
 },
 ],
};