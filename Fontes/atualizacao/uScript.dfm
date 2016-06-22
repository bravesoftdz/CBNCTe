object frmScript: TfrmScript
  Left = 193
  Top = 174
  Width = 861
  Height = 480
  Caption = 'frmScript'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Versao0: TMemo
    Left = 6
    Top = 6
    Width = 31
    Height = 23
    Ctl3D = False
    Lines.Strings = (
      'update parametros set ESTADO = '#39'PR'#39
      '^')
    ParentCtl3D = False
    TabOrder = 0
    WordWrap = False
  end
  object versao1: TMemo
    Left = 46
    Top = 6
    Width = 31
    Height = 23
    Ctl3D = False
    Lines.Strings = (
      'ALTER TABLE PARAMETROS DROP QTCLI'
      '^'
      'ALTER TABLE PARAMETROS DROP QTTIPCLI'#9#9#9
      '^'
      'ALTER TABLE PARAMETROS DROP QTUSU               '
      '^'
      'ALTER TABLE PARAMETROS DROP QTFOR               '
      '^'
      'ALTER TABLE PARAMETROS DROP QTGRP               '
      '^'
      'ALTER TABLE PARAMETROS DROP QTSGRP              '
      '^'
      'ALTER TABLE PARAMETROS DROP QTPRO               '
      '^'
      'ALTER TABLE PARAMETROS DROP QTFPG               '
      '^'
      'ALTER TABLE PARAMETROS DROP QTNOTA              '
      '^'
      'ALTER TABLE PARAMETROS DROP QTMARCA             '
      '^'
      'ALTER TABLE PARAMETROS DROP QTCOMPCOMIS         '
      '^'
      'ALTER TABLE PARAMETROS DROP QTITNOTA            '
      '^'
      'ALTER TABLE PARAMETROS DROP QTPAG               '
      '^'
      'ALTER TABLE PARAMETROS DROP QTEVE               '
      '^                                                '
      'ALTER TABLE PARAMETROS DROP QTDESCON            '
      '^'
      'ALTER TABLE PARAMETROS DROP QTSUBVEN            '
      '^                                                '
      'ALTER TABLE PARAMETROS DROP QTPED               '
      '^'
      'ALTER TABLE PARAMETROS DROP JUROSATRASO         '
      '^                                                '
      'ALTER TABLE PARAMETROS DROP DESCPGTOADIAN       '
      '^'
      'ALTER TABLE PARAMETROS DROP TOLERANJUR          '
      '^                                                '
      'ALTER TABLE PARAMETROS DROP CONTCX              '
      '^'
      'ALTER TABLE PARAMETROS DROP TRABDOM             '
      '^                                                '
      'ALTER TABLE PARAMETROS DROP PEDVEN              '
      '^'
      'ALTER TABLE PARAMETROS DROP IMPPERLUC           '
      '^'
      'ALTER TABLE PARAMETROS DROP IMPDADCLI           '
      '^'
      'ALTER TABLE PARAMETROS DROP DADCOMCLI           '
      '^                                                '
      'ALTER TABLE PARAMETROS DROP EMPDIF              '
      '^'
      'ALTER TABLE PARAMETROS DROP IMP40COL            '
      '^  '
      'ALTER TABLE PARAMETROS DROP MANUTTERMIN    '
      '^'
      'ALTER TABLE PARAMETROS DROP TELAPRO'
      '^'
      'ALTER TABLE PARAMETROS DROP QTNFECONT         '
      '^                                              '
      'ALTER TABLE PARAMETROS DROP IMPCARNET           '
      '^'
      'ALTER TABLE PARAMETROS DROP QTDAUT              '
      '^                                                '
      'ALTER TABLE PARAMETROS DROP IMPDUPLIC           '
      '^'
      'ALTER TABLE PARAMETROS DROP SOMAABCX            '
      '^                                                '
      'ALTER TABLE PARAMETROS DROP CONPRCUS            '
      '^'
      'ALTER TABLE PARAMETROS DROP CADCLIBALC          '
      '^                                                '
      'ALTER TABLE PARAMETROS DROP FPAGBALC            '
      '^'
      'ALTER TABLE PARAMETROS DROP DEACPRIPRO          '
      '^'
      'ALTER TABLE PARAMETROS DROP ORDPROPED           '
      '^'
      'ALTER TABLE PARAMETROS DROP PERCMDB             '
      '^                                                '
      'ALTER TABLE PARAMETROS DROP IMPASSPED           '
      '^'
      'ALTER TABLE PARAMETROS DROP BUSCAPRO            '
      '^                                                '
      'ALTER TABLE PARAMETROS DROP QTEMP               '
      '^'
      'ALTER TABLE PARAMETROS DROP QTIPCLI             '
      '^                                                '
      'ALTER TABLE PARAMETROS DROP BANCBLOQ            '
      '^'
      'ALTER TABLE PARAMETROS DROP QTTRANSP            '
      '^                                                '
      'ALTER TABLE PARAMETROS DROP PEDAUT              '
      '^'
      'ALTER TABLE PARAMETROS DROP QTRECEB             '
      '^                                                '
      'ALTER TABLE PARAMETROS DROP QTDEV               '
      '^'
      'ALTER TABLE PARAMETROS DROP QTCARGA             '
      '^'
      'ALTER TABLE PARAMETROS DROP SENHA               '
      '^'
      'ALTER TABLE PARAMETROS DROP ITEMEXTRA           '
      '^                                                '
      'ALTER TABLE PARAMETROS DROP PRODBLOQ            '
      '^'
      'ALTER TABLE PARAMETROS DROP VDAPRONEG           '
      '^                                                '
      'ALTER TABLE PARAMETROS DROP RECCAIXA            '
      '^'
      'ALTER TABLE PARAMETROS DROP ALTPRECO            '
      '^                                                '
      'ALTER TABLE PARAMETROS DROP DIASCRITICA         '
      '^'
      'ALTER TABLE PARAMETROS DROP DIASCRITICABLOQ     '
      '^                                                '
      'ALTER TABLE PARAMETROS DROP ECF'
      '^                                                '
      'ALTER TABLE PARAMETROS DROP OS                  '
      '^'
      'ALTER TABLE PARAMETROS DROP USANRDOC            '
      '^                                                '
      'ALTER TABLE PARAMETROS DROP MARCAECF'
      '^'
      'ALTER TABLE PARAMETROS DROP LIMITE              '
      '^'
      'ALTER TABLE PARAMETROS DROP LAYOUTPED           '
      '^                                                '
      'ALTER TABLE PARAMETROS DROP CONTROL'
      '^                                                '
      'ALTER TABLE PARAMETROS DROP BAIXAORC            '
      '^'
      'ALTER TABLE PARAMETROS DROP MANUT               '
      '^                                                '
      'ALTER TABLE PARAMETROS DROP MANUTRESP'
      '^                                                '
      'ALTER TABLE PARAMETROS DROP MANUTMOT            '
      '^'
      'ALTER TABLE PARAMETROS DROP MANUTPREVINI        '
      '^                                                '
      'ALTER TABLE PARAMETROS DROP MANUTPREVFIN'
      '^                                                '
      'ALTER TABLE PARAMETROS DROP HOST                '
      '^'
      'ALTER TABLE PARAMETROS DROP "USER"              '
      '^                                                '
      'ALTER TABLE PARAMETROS DROP "PASSWORD"'
      '^'
      'ALTER TABLE PARAMETROS DROP CONFIG_ATIVA        '
      '^'
      'ALTER TABLE PARAMETROS DROP VERSAODOWN          '
      '^'
      'ALTER TABLE PARAMETROS DROP PERPIS'
      '^'
      'ALTER TABLE PARAMETROS DROP PERCOFINS'
      '^'
      'ALTER TABLE PARAMETROS DROP CST_PIS'
      '^'
      'ALTER TABLE PARAMETROS DROP CST_COFINS'
      '^'
      'ALTER TABLE PARAMETROS DROP SENHA_NIVEIS'
      '^'
      'ALTER TABLE PARAMETROS DROP SERVSMTP'
      '^'
      'ALTER TABLE PARAMETROS DROP USERSMTP'
      '^'
      'ALTER TABLE PARAMETROS DROP SENHASMTP'
      '^'
      'ALTER TABLE PARAMETROS DROP CORPOMSG'
      '^'
      'COMMIT'
      '^')
    ParentCtl3D = False
    TabOrder = 1
    WordWrap = False
  end
  object versao2: TMemo
    Left = 86
    Top = 6
    Width = 31
    Height = 23
    Ctl3D = False
    Lines.Strings = (
      'ALTER TABLE PARAMETROS'
      'ADD CONTINGENCIA_ATIVA TIMESTAMP'
      '^'
      'ALTER TABLE PARAMETROS'
      'ADD JUST_CONTINGENCIA VARCHAR(200)'
      '^'
      'commit'
      '^')
    ParentCtl3D = False
    TabOrder = 2
    WordWrap = False
  end
  object versao3: TMemo
    Left = 126
    Top = 6
    Width = 31
    Height = 23
    Ctl3D = False
    Lines.Strings = (
      'ALTER TABLE CTE'
      'ADD RENAVAM VARCHAR(10)'
      '^'
      'ALTER TABLE CTE'
      'ADD UF_VEICULO CHAR(2)'
      '^')
    ParentCtl3D = False
    TabOrder = 3
    WordWrap = False
  end
  object versao4: TMemo
    Left = 166
    Top = 6
    Width = 31
    Height = 23
    Ctl3D = False
    Lines.Strings = (
      'CREATE TABLE EVE_LOTE ('
      '    EMPRESA INTEGER,'
      '    LOTE INTEGER NOT NULL,'
      '    EVEINICIAL INTEGER,'
      '    EVEFINAL INTEGER,'
      '    DATA DATE)'
      '^'
      'alter table EVE_LOTE'
      'add constraint PK_EVE_LOTE'
      'primary key (LOTE)'
      '^'
      'commit'
      '^')
    ParentCtl3D = False
    TabOrder = 4
    WordWrap = False
  end
  object versao5: TMemo
    Left = 206
    Top = 6
    Width = 31
    Height = 23
    Ctl3D = False
    Lines.Strings = (
      'update RDB$FIELDS set'
      'RDB$FIELD_LENGTH = 3000,'
      'RDB$CHARACTER_LENGTH = 3000'
      'where RDB$FIELD_NAME = '#39'RDB$87'#39
      '^'
      'update RDB$FIELDS set'
      'RDB$FIELD_LENGTH = 11,'
      'RDB$CHARACTER_LENGTH = 11'
      'where RDB$FIELD_NAME = '#39'RDB$270'#39
      '^')
    ParentCtl3D = False
    TabOrder = 5
    WordWrap = False
  end
  object versao6: TMemo
    Left = 246
    Top = 6
    Width = 31
    Height = 23
    Ctl3D = False
    Lines.Strings = (
      'CREATE TABLE VEICULOS ('
      '    CODIGO INTEGER NOT NULL,'
      '    PLACA VARCHAR(7),'
      '    RENAVAM VARCHAR(14),'
      '    TIPO_VEICULO INTEGER,'
      '    TIPO_RODADO INTEGER,'
      '    TIPO_CARROCERIA INTEGER,'
      '    UF_VEICULO CHAR(2),'
      '    VEICULO_PROPRIO CHAR(1),'
      '    TARA NUMERIC(15,2),'
      '    CAPACIDADE_KG NUMERIC(15,2),'
      '    CAPACIDADE_M3 NUMERIC(15,2))'
      '^'
      'alter table VEICULOS'
      'add constraint PK_VEICULOS'
      'primary key (CODIGO)'
      '^'
      'CREATE GENERATOR GEN_VEICULOS_ID'
      '^'
      'CREATE TRIGGER VEICULOS_BI FOR VEICULOS'
      'ACTIVE BEFORE INSERT POSITION 0'
      'AS'
      'BEGIN'
      '  IF ((NEW.CODIGO IS NULL) or (new.codigo = 0))THEN'
      '    NEW.CODIGO = GEN_ID(GEN_VEICULOS_ID,1);'
      'END'
      '^')
    ParentCtl3D = False
    TabOrder = 6
    WordWrap = False
  end
  object versao7: TMemo
    Left = 286
    Top = 6
    Width = 31
    Height = 23
    Ctl3D = False
    Lines.Strings = (
      'ALTER TABLE CTE ALTER RENAVAM TYPE VARCHAR(11)'
      '^'
      'ALTER TABLE CTE ALTER XOBS TYPE VARCHAR(3000)'
      '^')
    ParentCtl3D = False
    TabOrder = 7
    WordWrap = False
  end
  object versao8: TMemo
    Left = 326
    Top = 6
    Width = 31
    Height = 23
    Ctl3D = False
    Lines.Strings = (
      'CREATE TABLE CTEQTDECARGA ('
      '    CODIGO INTEGER NOT NULL,'
      '    NUMCTE INTEGER,'
      '    CODUNID CHAR(2),'
      '    TPMEDIDA VARCHAR(20),'
      '    QTDECARGA NUMERIC(15,4))'
      '^'
      'alter table CTEQTDECARGA'
      'add constraint PK_CTEQTDECARGA'
      'primary key (CODIGO)'
      '^'
      'CREATE GENERATOR GEN_CTEQTDECARGA_ID'
      '^'
      'CREATE TRIGGER CTEQTDECARGA_BI FOR CTEQTDECARGA'
      'ACTIVE BEFORE INSERT POSITION 0'
      'AS'
      'BEGIN'
      '  IF ((NEW.CODIGO IS NULL) or (new.codigo = 0)) THEN'
      '    NEW.CODIGO = GEN_ID(GEN_CTEQTDECARGA_ID,1);'
      'END'
      '^'
      'CREATE PROCEDURE TRANSFERE_QUANTIDADE_CARGA '
      'as'
      'declare variable seq integer;'
      'declare variable nrcte integer;'
      'declare variable cunid char(2);'
      'declare variable tpmed varchar(20);'
      'declare variable qcarga numeric(15,4);'
      'begin'
      '  seq = 1;'
      ''
      '  for select'
      '    cqc.nrcte, cqc.cunid, cqc.tpmed, cqc.qcarga'
      '  from'
      '    cteqtdcarga cqc'
      '  order by cqc.nrcte'
      ''
      '  into'
      '    :nrCte, :cUnid , :tpMed , :qCarga'
      ''
      '  do'
      '    begin'
      
        '      insert into cteqtdecarga (CODIGO, NUMCTE, CODUNID, TPMEDID' +
        'A, QTDECARGA)'
      
        '                        VALUES (:seq, :nrCte, :cUnid, :tpMed, :q' +
        'Carga);'
      '      seq = seq + 1;'
      '    end'
      '  suspend;'
      'end'
      '^'
      'commit'
      '^')
    ParentCtl3D = False
    TabOrder = 8
    WordWrap = False
  end
  object versao9: TMemo
    Left = 366
    Top = 6
    Width = 31
    Height = 23
    Ctl3D = False
    Lines.Strings = (
      'execute procedure TRANSFERE_QUANTIDADE_CARGA'
      '^'
      'commit'
      '^'
      'DROP PROCEDURE TRANSFERE_QUANTIDADE_CARGA'
      '^'
      'DELETE FROM CTEQTDCARGA'
      '^'
      '')
    ParentCtl3D = False
    TabOrder = 9
    WordWrap = False
  end
  object versao10: TMemo
    Left = 406
    Top = 6
    Width = 31
    Height = 23
    Ctl3D = False
    Lines.Strings = (
      
        'select gen_id( gen_cteqtdecarga_id , (select max(codigo) from ct' +
        'eqtdecarga ) ) from rdb$database'
      '^')
    ParentCtl3D = False
    TabOrder = 10
    WordWrap = False
  end
  object versao11: TMemo
    Left = 446
    Top = 6
    Width = 31
    Height = 23
    Ctl3D = False
    Lines.Strings = (
      'ALTER TABLE CLIENTES ALTER BAIRRO TYPE CHAR(60)'
      '^')
    ParentCtl3D = False
    TabOrder = 11
    WordWrap = False
  end
  object versao12: TMemo
    Left = 486
    Top = 6
    Width = 31
    Height = 23
    Ctl3D = False
    Lines.Strings = (
      'ALTER TABLE VEICULOS'
      'ADD CPFCNPJ VARCHAR(14)'
      '^'
      'ALTER TABLE VEICULOS'
      'ADD IE VARCHAR(12)'
      '^'
      'ALTER TABLE VEICULOS'
      'ADD UF CHAR(12)'
      '^'
      'ALTER TABLE VEICULOS'
      'ADD NOME_PROPRIETARIO VARCHAR(100)'
      '^'
      'ALTER TABLE VEICULOS'
      'ADD RNTRC VARCHAR(14)'
      '^'
      'ALTER TABLE VEICULOS'
      'ADD TIPO_PROPRIETARIO SMALLINT'
      '^'
      'ALTER TABLE CTE'
      'ADD CODIGO_VEICULO INTEGER'
      '^'
      'CREATE PROCEDURE CADASTRA_VEICULOS '
      'as'
      'declare variable placa varchar(7);'
      'declare variable codveiculo integer;'
      'begin'
      '  for select distinct placa from cte'
      '    into :placa'
      '  do'
      '  begin'
      
        '    INSERT INTO VEICULOS(CODIGO, PLACA, VEICULO_PROPRIO) VALUES(' +
        '0,:placa,'#39'S'#39');'
      ''
      
        '    SELECT gen_id(gen_veiculos_id, 0) FROM RDB$DATABASE INTO :co' +
        'dveiculo;'
      ''
      
        '    UPDATE CTE SET CODIGO_VEICULO = (:codveiculo) where placa = ' +
        ':PLACA;'
      ''
      '  end'
      '    suspend;'
      'end'
      '^')
    ParentCtl3D = False
    TabOrder = 12
    WordWrap = False
  end
  object versao13: TMemo
    Left = 526
    Top = 6
    Width = 31
    Height = 23
    Ctl3D = False
    Lines.Strings = (
      'execute procedure cadastra_veiculos'
      '^')
    ParentCtl3D = False
    TabOrder = 13
    WordWrap = False
  end
  object versao14: TMemo
    Left = 566
    Top = 6
    Width = 31
    Height = 23
    Ctl3D = False
    Lines.Strings = (
      'DROP PROCEDURE CADASTRA_VEICULOS'
      '^'
      'ALTER TABLE CTE DROP UF_VEICULO'
      '^'
      'ALTER TABLE CTE DROP RENAVAM'
      '^'
      'ALTER TABLE CTE DROP PLACA'
      '^')
    ParentCtl3D = False
    TabOrder = 14
    WordWrap = False
  end
  object versao15: TMemo
    Left = 606
    Top = 6
    Width = 31
    Height = 23
    Ctl3D = False
    Lines.Strings = (
      'ALTER TABLE PARAMETROS ALTER SN TYPE CHAR(2)'
      '^')
    ParentCtl3D = False
    TabOrder = 15
    WordWrap = False
  end
  object versao16: TMemo
    Left = 646
    Top = 6
    Width = 31
    Height = 23
    Ctl3D = False
    Lines.Strings = (
      'CREATE TABLE COMPONENTE_VALOR_PRESTACAO ('
      '    CODIGO INTEGER NOT NULL,'
      '    NUM_CTE INTEGER,'
      '    NOME_COMPONENTE VARCHAR(15),'
      '    VALOR_COMPONENTE NUMERIC(15,2) '
      ')'
      '^'
      'alter table COMPONENTE_VALOR_PRESTACAO'
      'add constraint PK_COMPONENTE_VALOR_PRESTACAO'
      'primary key (CODIGO)'
      '^'
      'CREATE GENERATOR GEN_COMPONENTE_ID'
      '^'
      'CREATE TRIGGER COMPONENTE_BI FOR COMPONENTE_VALOR_PRESTACAO'
      'ACTIVE BEFORE INSERT POSITION 0'
      'AS'
      'BEGIN'
      '  IF ((NEW.CODIGO IS NULL)or(new.codigo = 0)) THEN'
      '    NEW.CODIGO = GEN_ID(GEN_COMPONENTE_ID,1);'
      'END'
      '^')
    ParentCtl3D = False
    TabOrder = 16
    WordWrap = False
  end
  object versao17: TMemo
    Left = 686
    Top = 6
    Width = 31
    Height = 23
    Ctl3D = False
    Lines.Strings = (
      'CREATE TABLE MANIFESTO ('
      '    CMDF INTEGER NOT NULL,'
      '    NMDF INTEGER NOT NULL,'
      '    IDCHAVE VARCHAR(44),'
      '    TPAMB INTEGER,'
      '    TPEMIT INTEGER,'
      '    MODAL INTEGER,'
      '    DT_CRIACAO DATE,'
      '    DHEMI DATE,'
      '    TPEMIS INTEGER,'
      '    VERPROC VARCHAR(20),'
      '    UFINI CHAR(2),'
      '    UFFIM CHAR(2),'
      '    CMUNCARREGA INTEGER,'
      '    XMUNCARREGA VARCHAR(100),'
      '    CMUNDESCARGA INTEGER,'
      '    XMUNDESCARGA VARCHAR(100),'
      '    COD_EMIT INTEGER,'
      '    COD_VEIC_TRAC INTEGER,'
      '    VALE_PEDAGIO INTEGER,'
      '    STATUS CHAR(3),'
      '    DESCRICAO_STATUS VARCHAR(100),'
      '    NUMERO_PROTOCOLO VARCHAR(20),'
      '    INFCLP VARCHAR(800),'
      '    INFADFISCO VARCHAR(800))'
      '^'
      'alter table MANIFESTO'
      'add constraint PK_MANIFESTO'
      'primary key (CMDF)'
      '^'
      'CREATE GENERATOR GEN_MANIFESTO_ID'
      '^'
      'CREATE TRIGGER MANIFESTO_BI FOR MANIFESTO'
      'ACTIVE BEFORE INSERT POSITION 0'
      'AS'
      'BEGIN'
      '  IF ((NEW.CMDF IS NULL) OR (NEW.CMDF = 0)) THEN begin'
      '    NEW.CMDF = GEN_ID(GEN_MANIFESTO_ID,1);'
      '    NEW.NMDF = NEW.CMDF;'
      '  END'
      'END'
      '^'
      'CREATE TABLE CONDUTORES_MANIFESTO ('
      '    CODIGO INTEGER NOT NULL,'
      '    CODIGO_MANIFESTO INTEGER,'
      '    CODIGO_CONDUTOR INTEGER)'
      '^'
      'alter table CONDUTORES_MANIFESTO'
      'add constraint PK_CONDUTORES_MANIFESTO'
      'primary key (CODIGO)'
      '^'
      'CREATE GENERATOR GEN_CONDUTORES_MANIFESTO_ID'
      '^'
      'CREATE TRIGGER CONDUTORES_MANIFESTO_BI FOR CONDUTORES_MANIFESTO'
      'ACTIVE BEFORE INSERT POSITION 0'
      'AS'
      'BEGIN'
      '  IF ((NEW.CODIGO IS NULL) OR (NEW.CODIGO = 0)) THEN'
      '    NEW.CODIGO = GEN_ID(GEN_CONDUTORES_MANIFESTO_ID,1);'
      'END'
      '^'
      'CREATE TABLE CONDUTORES ('
      '    CODIGO INTEGER NOT NULL,'
      '    NOME VARCHAR(100),'
      '    CPF VARCHAR(12))'
      '^'
      'alter table CONDUTORES'
      'add constraint PK_CONDUTORES'
      'primary key (CODIGO)'
      '^'
      'CREATE GENERATOR GEN_CONDUTORES_ID'
      '^'
      'CREATE TRIGGER CONDUTORES_BI FOR CONDUTORES'
      'ACTIVE BEFORE INSERT POSITION 0'
      'AS'
      'BEGIN'
      '  IF ((NEW.CODIGO IS NULL) OR (NEW.CODIGO = 0)) THEN'
      '    NEW.CODIGO = GEN_ID(GEN_CONDUTORES_ID,1);'
      'END'
      '^'
      'alter table CONDUTORES_MANIFESTO'
      'add constraint FK_CONDUTORES_MANIFESTO_1'
      'foreign key (CODIGO_MANIFESTO)'
      'references MANIFESTO(CMDF)'
      '^'
      'alter table CONDUTORES_MANIFESTO'
      'add constraint FK_CONDUTORES_MANIFESTO_2'
      'foreign key (CODIGO_CONDUTOR)'
      'references CONDUTORES(CODIGO)'
      '^')
    ParentCtl3D = False
    TabOrder = 17
    WordWrap = False
  end
  object versao18: TMemo
    Left = 726
    Top = 6
    Width = 31
    Height = 23
    Ctl3D = False
    Lines.Strings = (
      'CREATE TABLE VEICULOS_REBOQUE ('
      '    CODIGO INTEGER NOT NULL,'
      '    CODIGO_MANIFESTO INTEGER,'
      '    CODIGO_VEICULO INTEGER)'
      '^'
      'alter table VEICULOS_REBOQUE'
      'add constraint PK_VEICULOS_REBOQUE'
      'primary key (CODIGO)'
      '^'
      'alter table VEICULOS_REBOQUE'
      'add constraint FK_VEICULOS_REBOQUE_1'
      'foreign key (CODIGO_MANIFESTO)'
      'references MANIFESTO(CMDF)'
      '^'
      'alter table VEICULOS_REBOQUE'
      'add constraint FK_VEICULOS_REBOQUE_2'
      'foreign key (CODIGO_VEICULO)'
      'references VEICULOS(CODIGO)'
      '^'
      'CREATE TABLE VALE_PEDAGIO ('
      '    CODIGO INTEGER NOT NULL,'
      '    CNPJ_FORN VARCHAR(14),'
      '    CNPJ_PG VARCHAR(14),'
      '    N_COMPRA VARCHAR(22))'
      '^'
      'alter table VALE_PEDAGIO'
      'add constraint PK_VALE_PEDAGIO'
      'primary key (CODIGO)'
      '^'
      'alter table MANIFESTO'
      'add constraint FK_MANIFESTO_2'
      'foreign key (COD_VEIC_TRAC)'
      'references VEICULOS(CODIGO)'
      '^'
      'alter table MANIFESTO'
      'add constraint FK_MANIFESTO_3'
      'foreign key (VALE_PEDAGIO)'
      'references VALE_PEDAGIO(CODIGO)'
      '^')
    ParentCtl3D = False
    TabOrder = 18
    WordWrap = False
  end
  object versao19: TMemo
    Left = 766
    Top = 6
    Width = 31
    Height = 23
    Ctl3D = False
    Lines.Strings = (
      'CREATE GENERATOR GEN_VEICULOS_REBOQUE_ID'
      '^'
      'CREATE TRIGGER VEICULOS_REBOQUE_BI FOR VEICULOS_REBOQUE'
      'ACTIVE BEFORE INSERT POSITION 0'
      'AS'
      'BEGIN'
      '  IF ((NEW.CODIGO IS NULL) OR (NEW.CODIGO = 0)) THEN'
      '    NEW.CODIGO = GEN_ID(GEN_VEICULOS_REBOQUE_ID,1);'
      'END'
      '^'
      'CREATE TABLE CTES_MANIFESTO ('
      '    CODIGO INTEGER NOT NULL,'
      '    CODIGO_MANIFESTO INTEGER,'
      '    CODIGO_CTE INTEGER)'
      '^'
      'alter table CTES_MANIFESTO'
      'add constraint PK_CTES_MANIFESTO'
      'primary key (CODIGO)'
      '^'
      'CREATE GENERATOR GEN_CTES_MANIFESTO_ID'
      '^'
      'CREATE TRIGGER CTES_MANIFESTO_BI FOR CTES_MANIFESTO'
      'ACTIVE BEFORE INSERT POSITION 0'
      'AS'
      'BEGIN'
      '  IF ((NEW.CODIGO IS NULL) OR (NEW.CODIGO = 0)) THEN'
      '    NEW.CODIGO = GEN_ID(GEN_CTES_MANIFESTO_ID,1);'
      'END'
      '^'
      'alter table CTES_MANIFESTO'
      'add constraint FK_CTES_MANIFESTO_1'
      'foreign key (CODIGO_MANIFESTO)'
      'references MANIFESTO(CMDF)'
      '^'
      'CREATE GENERATOR GEN_VALE_PEDAGIO_ID'
      '^'
      'CREATE TRIGGER VALE_PEDAGIO_BI FOR VALE_PEDAGIO'
      'ACTIVE BEFORE INSERT POSITION 0'
      'AS'
      'BEGIN'
      '  IF ((NEW.CODIGO IS NULL) or (new.codigo = 0)) THEN'
      '    NEW.CODIGO = GEN_ID(GEN_VALE_PEDAGIO_ID,1);'
      'END'
      '^')
    ParentCtl3D = False
    TabOrder = 19
    WordWrap = False
  end
  object versao20: TMemo
    Left = 806
    Top = 6
    Width = 31
    Height = 23
    Ctl3D = False
    Lines.Strings = (
      'ALTER TABLE PARAMETROS'
      'ADD CIOT VARCHAR(12)'
      '^')
    ParentCtl3D = False
    TabOrder = 20
    WordWrap = False
  end
  object versao21: TMemo
    Left = 6
    Top = 38
    Width = 31
    Height = 23
    Ctl3D = False
    Lines.Strings = (
      'ALTER TABLE PARAMETROS ALTER RAZ TYPE VARCHAR(100) '
      '^'
      'ALTER TABLE PARAMETROS ALTER FAN TYPE VARCHAR(100)'
      '^'
      'CREATE TABLE MANIFESTO_XML ('
      '    CODIGO  INTEGER NOT NULL,'
      '    CODIGO_MANIFESTO   INTEGER,'
      '    XML     BLOB SUB_TYPE 1 SEGMENT SIZE 80'
      ')'
      '^'
      'alter table MANIFESTO_XML'
      'add constraint PK_MANIFESTO_XML'
      'primary key (CODIGO)'
      '^'
      'CREATE GENERATOR GEN_MANIFESTO_XML_ID'
      '^'
      'CREATE TRIGGER MANIFESTO_XML_BI FOR MANIFESTO_XML'
      'ACTIVE BEFORE INSERT POSITION 0'
      'AS'
      'BEGIN'
      '  IF ((NEW.CODIGO IS NULL) or (new.codigo = 0)) THEN'
      '    NEW.CODIGO = GEN_ID(GEN_MANIFESTO_XML_ID,1);'
      'END'
      '^')
    ParentCtl3D = False
    TabOrder = 21
    WordWrap = False
  end
  object versao22: TMemo
    Left = 46
    Top = 38
    Width = 31
    Height = 23
    Ctl3D = False
    Lines.Strings = (
      'ALTER TABLE CTE ALTER FONEDES TYPE VARCHAR(14)'
      '^'
      'ALTER TABLE CTE ALTER FONEEXP TYPE VARCHAR(14)'
      '^'
      'ALTER TABLE CTE ALTER FONEREC TYPE VARCHAR(14)'
      '^'
      'ALTER TABLE CTE ALTER FONEREM TYPE VARCHAR(14)'
      '^'
      'ALTER TABLE CTE ALTER FONETOM TYPE VARCHAR(14)'
      '^'
      'ALTER TABLE CTE ALTER EMAILDES TYPE VARCHAR(60)'
      '^')
    ParentCtl3D = False
    TabOrder = 22
    WordWrap = False
  end
  object versao23: TMemo
    Left = 86
    Top = 38
    Width = 31
    Height = 23
    Ctl3D = False
    Lines.Strings = (
      'ALTER TABLE MANIFESTO ALTER CMUNCARREGA TYPE VARCHAR(800)'
      '^')
    ParentCtl3D = False
    TabOrder = 23
    WordWrap = False
  end
  object versao24: TMemo
    Left = 126
    Top = 38
    Width = 31
    Height = 23
    Ctl3D = False
    Lines.Strings = (
      'ALTER TABLE MANIFESTO DROP XMUNCARREGA'
      '^'
      'ALTER TABLE MANIFESTO DROP XMUNDESCARGA'
      '^')
    ParentCtl3D = False
    TabOrder = 24
    WordWrap = False
  end
  object versao25: TMemo
    Left = 166
    Top = 38
    Width = 31
    Height = 23
    Ctl3D = False
    Lines.Strings = (
      'ALTER TABLE CTE'
      'ADD NUM_CTE_ANULADO INTEGER'
      '^')
    ParentCtl3D = False
    TabOrder = 25
    WordWrap = False
  end
  object versao26: TMemo
    Left = 206
    Top = 38
    Width = 31
    Height = 23
    Ctl3D = False
    Lines.Strings = (
      'ALTER TABLE MANIFESTO'
      'ADD INFPERCURSO VARCHAR(100)'
      '^')
    ParentCtl3D = False
    TabOrder = 26
    WordWrap = False
  end
  object qry2: TMDOScript
    Database = dm.Database
    Statistics = False
    Terminator = '^'
    Transaction = dm.Transaction
    Left = 396
    Top = 304
  end
end
