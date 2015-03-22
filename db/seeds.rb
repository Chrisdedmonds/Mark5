# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

microsoft = Company.create(name: 'Microsoft')
oracle = Company.create(name: 'Oracle')
vmware = Company.create(name: 'VMWare')
cisco = Company.create(name: 'Cisco')
comptia = Company.create(name: 'CompTIA')

it_professional = Certification.create(name: 'Microsoft Certified IT Professional', year: '2001', company_id: microsoft.id)
solutions_developer = Certification.create(name: 'Microsoft Certified Solutions Developer', year: '2002', company_id: microsoft.id)
database_administrator = Certification.create(name: 'Microsoft Certified Database Administrator', year: '2003', company_id: microsoft.id)
private_cloud = Certification.create(name: 'Private Cloud Certification', year: '2004', company_id: microsoft.id)
app_developer = Certification.create(name: 'Microsoft Certified Application Developer', year: '2005', company_id: microsoft.id)

oracle_certified = Certification.create(name: 'Oracle Certified Professional', year: '2006', company_id: oracle.id)
bi_certification = Certification.create(name: 'Oracle Business Intelligence Certification', year: '2007', company_id: oracle.id)
msql5_professional = Certification.create(name: 'Oracle Certified Professional MySQL 5 Database Administrator', year: '2009', company_id: oracle.id)
database_administrator = Certification.create(name: 'Oracle Database Administrator Certified Master', year: '2010', company_id: oracle.id)
mysql5_expert = Certification.create(name: 'Oracle Certified Expert MySQL 5.1 Cluster Database Administrator', year: '2009', company_id: oracle.id)

design_expert = Certification.create(name: 'VMWare Certified Design Expert-Cloud', year: '2008', company_id: vmware.id)
certified_pro_5 = Certification.create(name: 'VMWare Certified Professional 5', year: '2007', company_id: vmware.id)
vertualization_pro = Certification.create(name: 'VMWare Network Virtualization Certification', year: '2006', company_id: vmware.id)
vcp_cloud = Certification.create(name: 'VMWare VCP - Cloud', year: '2005', company_id: vmware.id)
certified_associate = Certification.create(name: 'VMWare Certified Associate - Workforce Mobility', year: '2004', company_id: vmware.id)

network_professional = Certification.create(name: 'Cisco Certified Network Professional Wireless', year: '2001', company_id: cisco.id)
design_associate = Certification.create(name: 'Cisco Certified Design Associate', year: '2001', company_id: cisco.id)
internetwork_expert = Certification.create(name: 'Cisco Certified Internetwork Expert', year: '2001', company_id: cisco.id)
network_associate = Certification.create(name: 'Cisco Certified Network Associate', year: '2002', company_id: cisco.id)
net_professional = Certification.create(name: 'Cisco Certified Network Professional - Data Center', year: '2004', company_id: cisco.id)

cloud_computing = Certification.create(name: 'CompTIA Cloud Computing Essentials', year: '2008', company_id: comptia.id)
healthcare_it= Certification.create(name: 'CompTIA Healthcare IT Technician', year: '2006', company_id: comptia.id)
mobility = Certification.create(name: 'CompTIA Mobility+', year: '2003', company_id: comptia.id)
security = Certification.create(name: 'CompTIA Security+', year: '2005', company_id: comptia.id)
storage = Certification.create(name: 'CompTIA Storage+', year: '2003', company_id: comptia.id)

User.where(name: 'Admin').first_or_create!(password_digest: BCrypt::Password.create('password'), admin: true, password: 'password', password_confirmation: 'password')
User.where(name: 'Chris').first_or_create!(password_digest: BCrypt::Password.create('password'), admin: false, password: 'password', password_confirmation: 'password')
