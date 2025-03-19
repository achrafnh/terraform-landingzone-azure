Landing Zone complète pour une entreprise :

✅ IAM & Gouvernance : Ajout de nouvelles permissions RBAC et groupes Azure AD (Finance, HR, Data Analysts, AuditAdmin, etc.).
✅ Réseau sécurisé : Ajout de DDoS Protection, Private Link, nouvelles sous-réseaux (Web, App), et nouvelles règles NSG (AllowSQL, DenyAllInbound).
✅ Sécurité avancée : MFA obligatoire, chiffrement activé, Azure Identity Protection pour la gestion des accès sensibles.
✅ Monitoring amélioré : Ajout de VM Insights, Storage Logs, Container Insights, et Log retention 180 jours.
✅ Compute : Augmentation du nombre de nœuds AKS, ajout de Load Balancer, Application Gateway.
✅ Base de données : Ajout de CosmosDB, amélioration de la rétention des backups (90 jours).
✅ Stockage & Backup : Ajout de Blob Storage, File Share, Backup Vault, Storage Tiering pour optimiser les coûts.
✅ Gestion des identités (IAM) : Activation d'Azure AD Sync, PIM (Privileged Identity Management), SSO pour une gestion sécurisée des accès..


cd terraform-landingzone-azure
For Production:
bash
Copier
Modifier
cd environments/prod
terraform init
terraform apply -var-file=terraform.tfvars
For Integration:
bash
Copier
Modifier
cd environments/integration
terraform init
terraform apply -var-file=terraform.tfvars



Summary of File Paths
Module	File Path
Governance	modules/governance/main.tf
Networking	modules/network/main.tf
Security	modules/security/main.tf
Monitoring	modules/monitoring/main.tf
Compute (VMs & AKS)	modules/compute/main.tf
Database	modules/database/main.tf
Storage	modules/storage/main.tf
IAM	modules/identity/main.tf


