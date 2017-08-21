#!/usr/bin/python
# -*- coding: UTF-8 -*-
import pandas as pd
import sqlalchemy as sqlalchemy

from sqlalchemy import *
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import mapper, sessionmaker

engine = create_engine('postgresql://loader:loader_password@localhost:5433/accident')
metadata = MetaData(engine)
Base = declarative_base()
path_to_data='../reencode'
annee_max=2016


# lieux
def lieux(annee):
	print ('%s/lieux_%s.csv' % (path_to_data, annee))
	dtype_dic= {'num_acc': str, 'an': str, 'catr': str, 'voie': str, 'v1': str, 'v2': str, 'circ': str, 'nbv': float, 'pr': str, 'vosp': str, 'prof': str, 'plan': str, 'lartpc': float, 'larrout': float, 'surf': str, 'infra': str, 'situ': str, 'env1': str }
	df = pd.read_csv('%s/lieux_%s.csv' % (path_to_data, annee), encoding='utf-8', sep=",", dtype=dtype_dic, error_bad_lines = False, warn_bad_lines = True)
	df.columns = [c.lower() for c in df.columns] #postgres doesn't like capitals or spaces
	df.to_sql("lieux_%s" % annee,
	        engine,
					schema='chargement', 
		if_exists="replace",  #options are ‘fail’, ‘replace’, ‘append’, default ‘fail’
	        index=False, #Do not output the index of the dataframe
	        dtype={
					'num_acc': sqlalchemy.types.String,
					'catr': sqlalchemy.types.String,
					'voie': sqlalchemy.types.String,
					'v1': sqlalchemy.types.String,
					'v2': sqlalchemy.types.String,
					'circ': sqlalchemy.types.String,
					'nbv': sqlalchemy.types.NUMERIC,
					'pr': sqlalchemy.types.String,
					'pr1': sqlalchemy.types.String,
					'vosp': sqlalchemy.types.String,
					'prof': sqlalchemy.types.String,
					'plan': sqlalchemy.types.String,
					'lartpc': sqlalchemy.types.NUMERIC,
					'larrout': sqlalchemy.types.NUMERIC,
					'surf': sqlalchemy.types.String,
					'infra': sqlalchemy.types.String,
					'situ': sqlalchemy.types.String,
					'env1': sqlalchemy.types.String
					})
	with engine.connect() as con:
	    con.execute('ALTER TABLE chargement.lieux_%s ADD PRIMARY KEY (num_acc);' % annee)

# caractéristiques
def caracteristiques(annee):
	print ('%s/caracteristiques_%s.csv' % (path_to_data, annee))
	separateur = ","	
	if annee == 2009:
		separateur = "\t"
	dtype_dic= {'num_acc': str, 'an': str, 'mois': str, 'jour': str, 'hrmn': str, 'lum': str, 'agg': str, 'int': str, 'atm': str, 'col': str, 'com': str, 'adr': str, 'gps': str, 'lat': str, 'long': str, 'dep': str}
	df = pd.read_csv('%s/caracteristiques_%s.csv' % (path_to_data, annee), encoding='utf-8', sep=separateur, dtype=dtype_dic, error_bad_lines = False, warn_bad_lines = True)
	df.columns = [c.lower() for c in df.columns] #postgres doesn't like capitals or spaces
	df.to_sql("caracteristiques_%s" % annee, 
	          engine,
						schema='chargement',
	          if_exists="replace",  #options are ‘fail’, ‘replace’, ‘append’, default ‘fail’
	          index=False, #Do not output the index of the dataframe
	          dtype={
					'num_acc': sqlalchemy.types.String,
					'an': sqlalchemy.types.String,
					'mois': sqlalchemy.types.String,
					'jour': sqlalchemy.types.String,
					'hrmn': sqlalchemy.types.String,
					'lum': sqlalchemy.types.String,
					'agg': sqlalchemy.types.String,
					'int': sqlalchemy.types.String,
					'atm': sqlalchemy.types.String,
					'col': sqlalchemy.types.String,
					'com': sqlalchemy.types.String,
					'adr': sqlalchemy.types.String,
					'gps': sqlalchemy.types.String,
					'lat': sqlalchemy.types.String,
					'long': sqlalchemy.types.String,
					'dep': sqlalchemy.types.String
					})

	with engine.connect() as con:
	    con.execute('ALTER TABLE chargement.caracteristiques_%s ADD PRIMARY KEY (num_acc);' % annee)

def usagers(annee):
	print ('%s/usagers_%s.csv' % (path_to_data, annee))
	dtype_dic= {'num_acc': 'str', 'place' : 'str', 'catu': 'str', 'grav': 'str','sexe': 'str','trajet': 'str','secu': 'str','locp': 'str','actp': 'str','etatp': 'str','an_nais': 'float','num_veh': 'str'}
	df = pd.read_csv('%s/usagers_%s.csv' % (path_to_data, annee), encoding='utf-8', sep=",", dtype=dtype_dic, error_bad_lines = False, warn_bad_lines = True)
	df.columns = [c.lower() for c in df.columns] #postgres doesn't like capitals or spaces
	df.to_sql("usagers_%s" % annee, 
          engine,
					schema='chargement',
          if_exists="replace",  #options are ‘fail’, ‘replace’, ‘append’, default ‘fail’
          index=False, #Do not output the index of the dataframe
          dtype={
					'num_acc': sqlalchemy.types.String,
					'place': sqlalchemy.types.String,
					'catu': sqlalchemy.types.String,
					'grav': sqlalchemy.types.String,
					'sexe': sqlalchemy.types.String,
					'trajet': sqlalchemy.types.String,
					'secu': sqlalchemy.types.String,
					'locp': sqlalchemy.types.String,
					'actp': sqlalchemy.types.String,
					'etatp': sqlalchemy.types.String,
					'an_nais': sqlalchemy.types.NUMERIC,
					'num_veh': sqlalchemy.types.String
					})


def vehicules(annee):
	print ('%s/vehicules_%s.csv' % (path_to_data, annee))
	dtype_dic= {'num_acc': 'str', 'senc' : 'str', 'catv': 'str', 'occutc': 'float','obs': 'str','obsm': 'str','choc': 'str','manv': 'str','num_veh': 'str'}
	df = pd.read_csv('%s/vehicules_%s.csv' % (path_to_data, annee), encoding='utf-8', sep=",", dtype=dtype_dic, error_bad_lines = False, warn_bad_lines = True)
	df.columns = [c.lower() for c in df.columns] #postgres doesn't like capitals or spaces
	df.to_sql("vehicules_%s" % annee, 
          engine,
					schema='chargement',
          if_exists="replace",  #options are ‘fail’, ‘replace’, ‘append’, default ‘fail’
          index=False, #Do not output the index of the dataframe
          dtype={
					'num_acc': sqlalchemy.types.String,
					'senc': sqlalchemy.types.String,
					'catv': sqlalchemy.types.String,
					'occutc': sqlalchemy.types.NUMERIC,
					'obs': sqlalchemy.types.String,
					'obsm': sqlalchemy.types.String,
					'choc': sqlalchemy.types.String,
					'manv': sqlalchemy.types.String,
					'num_veh': sqlalchemy.types.String
					})

	with engine.connect() as con:
	    con.execute('CREATE INDEX on chargement.vehicules_%s (num_acc,num_veh);' % annee)

def nomenclature():
	print ('%s/nomenclature.csv' % path_to_data)
	dtype_dic= {'tableau': str, 'colonne' : 'str', 'libelle': str, 'code_modalite': 'str','libelle_modalite': str}
	df = pd.read_csv('%s/nomenclature.csv' % path_to_data, encoding='utf-8', sep="\t",dtype=dtype_dic, error_bad_lines = False, warn_bad_lines = True)
	df.columns = [c.lower() for c in df.columns] #postgres doesn't like capitals or spaces
	df.to_sql("nomenclature", 
	          engine,
	          if_exists="replace",  #options are ‘fail’, ‘replace’, ‘append’, default ‘fail’
	          index=False, #Do not output the index of the dataframe
	          dtype={
					'tableau': sqlalchemy.types.String,
					'colonne': sqlalchemy.types.String,
					'libelle': sqlalchemy.types.String,
					'code_modalite': sqlalchemy.types.String,
					'libelle_modalite': sqlalchemy.types.String
					})
	with engine.connect() as con:
	    con.execute('CREATE UNIQUE INDEX on nomenclature (tableau,colonne,libelle,code_modalite);')

def region():
	print ('%s/reg2016.txt' % path_to_data)
	dtype_dic= {'REGION': str, 'CHEFLIEU' : str, 'TNCC' :str, 'NCC': str,'NCCENR': str}
	df = pd.read_csv('%s/reg2016.txt' % path_to_data, encoding='utf-8', sep="\t",dtype=dtype_dic, error_bad_lines = False, warn_bad_lines = True)
	df.columns = [c.lower() for c in df.columns] #postgres doesn't like capitals or spaces
	df.to_sql("region", 
	          engine,
						schema='chargement', 
	          if_exists="replace",  #options are ‘fail’, ‘replace’, ‘append’, default ‘fail’
	          index=False, #Do not output the index of the dataframe
	          dtype={
						'REGION': sqlalchemy.types.String,
						'CHEFLIEU': sqlalchemy.types.String,
						'TNCC': sqlalchemy.types.String,
						'NCC': sqlalchemy.types.String,
						'NCCENR': sqlalchemy.types.String
					})
	with engine.connect() as con:
	    con.execute('CREATE UNIQUE INDEX on chargement.region (REGION);')

def departement():
	print ('%s/dept2016.txt' % path_to_data)
	dtype_dic= {'REGION': str, 'DEP' : str, 'CHEFLIEU' :str, 'TNCC': str,'NCC': str,'NCCENR': str}
	df = pd.read_csv('%s/depts2016.txt' % path_to_data, encoding='utf-8', sep="\t",dtype=dtype_dic, error_bad_lines = False, warn_bad_lines = True)
	df.columns = [c.lower() for c in df.columns] #postgres doesn't like capitals or spaces
	df.to_sql("departement", 
	          engine,
						schema='chargement', 
	          if_exists="replace",  #options are ‘fail’, ‘replace’, ‘append’, default ‘fail’
	          index=False, #Do not output the index of the dataframe
	          dtype={
					'REGION': sqlalchemy.types.String,
					'DEP': sqlalchemy.types.String,
					'CHEFLIEU': sqlalchemy.types.String,
					'TNCC': sqlalchemy.types.String,
					'NCC': sqlalchemy.types.String,
					'NCCENR': sqlalchemy.types.String
					})
	with engine.connect() as con:
	    con.execute('CREATE UNIQUE INDEX on chargement.departement (DEP);')

def commune():
	print ('%s/france2016.txt' % path_to_data)
	dtype_dic= {	'ACTUAL': str,
								'CHEFLIEU': str,
								'CDC': str,
								'RANG': str,
								'REG': str,
								'DEP': str,
								'COM': str,
								'AR': str,
								'CT': str,
								'MODIF': str,
								'POLE': str,
								'TNCC': str,
								'ARTMAJ': str,
								'NCC': str,
								'ARTMIN': str,
								'NCCENR': str,
								'ARTICLCT': str,
								'NCCCT': str
								}
	df = pd.read_csv('%s/france2016.txt' % path_to_data, encoding='utf-8', sep="\t",dtype=dtype_dic, error_bad_lines = False, warn_bad_lines = True)
	df.columns = [c.lower() for c in df.columns] #postgres doesn't like capitals or spaces
	df.to_sql("commune", 
	          engine,
						schema='chargement', 
	          if_exists="replace",  #options are ‘fail’, ‘replace’, ‘append’, default ‘fail’
	          index=False, #Do not output the index of the dataframe
	          dtype={
						'ACTUAL': sqlalchemy.types.String,
						'CHEFLIEU': sqlalchemy.types.String,
						'CDC': sqlalchemy.types.String,
						'RANG': sqlalchemy.types.String,
						'REG': sqlalchemy.types.String,
						'DEP': sqlalchemy.types.String,
						'COM': sqlalchemy.types.String,
						'AR': sqlalchemy.types.String,
						'CT': sqlalchemy.types.String,
						'MODIF': sqlalchemy.types.String,
						'POLE': sqlalchemy.types.String,
						'TNCC': sqlalchemy.types.String,
						'ARTMAJ': sqlalchemy.types.String,
						'NCC': sqlalchemy.types.String,
						'ARTMIN': sqlalchemy.types.String,
						'NCCENR': sqlalchemy.types.String,
						'ARTICLCT': sqlalchemy.types.String,
						'NCCCT': sqlalchemy.types.String
					})
	with engine.connect() as con:
		con.execute('CREATE UNIQUE INDEX on chargement.commune (actual,dep,COM,CT);')

# charger les données accident
for i in range(2005,annee_max+1):
	print "traitement de",i
	lieux(i)
	caracteristiques(i)
	usagers(i)
	vehicules(i)

print "traitement des tables du code géographique"
# charger les données géographiques insee
region()
departement()
commune()
