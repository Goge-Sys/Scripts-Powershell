# 🪟 Scripts-Powershell
*Collection de scripts PowerShell pour automatiser des tâches système, de personnalisation et de gestion sous Windows.*

---

## 📌 À propos
Ce dépôt contient des scripts **PowerShell** développés pour :
- **Personnaliser** des environnements Windows
- **Automatiser** des tâches administratives
- **Optimiser** des workflows sous Windows Server/Client

## 🚀 Prérequis
Pour exécuter ces scripts, assurez-vous que votre environnement répond aux exigences suivantes :
 | **Élément**       | **Exigence**                          | **Vérification**               |
 |-------------------|---------------------------------------|--------------------------------|
 | **Système**       | Windows 10/11 ou Windows Server 2016+ | `Get-ComputerInfo` |
 | **PowerShell**    | Version 5.1 ou supérieure            | `$PSVersionTable` |
 | **Exécution**     | Autoriser les scripts PowerShell      | `Get-ExecutionPolicy` (doit être `RemoteSigned` ou `Unrestricted`) |
 | **Droits**        | Administrateur (pour certains scripts) | `whoami /groups` |

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
