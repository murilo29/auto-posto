inherited dtmdlConnection: TdtmdlConnection
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  Height = 247
  Width = 459
  object conConnection: TFDConnection
    Params.Strings = (
      'Database=D:\Projetos\AutoPosto\Test\Win32\Debug\AutoPosto.s3db'
      'DriverID=sQLite')
    LoginPrompt = False
    Left = 32
    Top = 16
  end
  object Cursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 112
    Top = 16
  end
  object Driver: TFDPhysSQLiteDriverLink
    Left = 158
    Top = 18
  end
  object fdscrptScript: TFDScript
    SQLScripts = <
      item
        Name = 'Tax'
        SQL.Strings = (
          'create table if not exists tax('
          ' id varchar(38) not null,'
          ' description varchar(50) not null,'
          ' value decimal(12,2) default 0,'
          ' constraint pk_tax primary key(id)'
          ');')
      end
      item
        Name = 'Exception'
        SQL.Strings = (
          'create table if not exists exception('
          ' id varchar(38) not null,'
          ' classname varchar(80),'
          ' menssage text,'
          ' date_time datetime,'
          ' constraint pk_exception primary key(id)'
          ');')
      end
      item
        Name = 'Tank'
        SQL.Strings = (
          'create table if not exists tank('
          ' id varchar(38) not null,'
          ' description varchar(50) not null,'
          ' liter decimal(12,2) default 0,'
          ' constraint pk_tank primary key(id)'
          ');')
      end
      item
        Name = 'Fuel'
        SQL.Strings = (
          'create table if not exists fuel('
          ' id varchar(38) not null,'
          ' id_tax varchar(38) not null,'
          ' description varchar(50) not null,'
          ' value decimal(12,2) default 0,'
          ' constraint pk_fuel primary key(id),'
          ' constraint fk_fuel_tax foreign key(id_tax) references tax(id)'
          ');')
      end
      item
        Name = 'Bomb'
        SQL.Strings = (
          'create table if not exists bomb('
          ' id varchar(38) not null,'
          ' id_fuel varchar(38) not null,'
          ' description varchar(50) not null,'
          ' constraint pk_bomb primary key(id),'
          
            ' constraint fk_bomb_fuel foreign key(id_fuel) references fuel(id' +
            ')'
          ');')
      end
      item
        Name = 'Tank Bomb'
        SQL.Strings = (
          'create table if not exists tank_bomb('
          ' id varchar(38) not null,'
          ' id_tank varchar(38) not null,'
          ' id_bomb varchar(38) not null,'
          ' constraint pk_tank_bomb primary key(id),'
          
            ' constraint fk_tank_bomb_tank foreign key(id_tank) references ta' +
            'nk(id),'
          
            ' constraint fk_tank_bomb_bomb foreign key(id_bomb) references bo' +
            'mb(id)'
          ');')
      end
      item
        Name = 'To Fuel'
        SQL.Strings = (
          'create table if not exists to_fuel('
          ' id varchar(38) not null,'
          ' id_tank_bomb varchar(38) not null,'
          ' date datetime,'
          ' liters integer,'
          ' liter_value decimal(12,2),'
          ' tax decimal(12,2), '
          ' constraint pk_to_fuel primary key(id),'
          
            ' constraint fk_to_fuel_tank_bomb foreign key(id_tank_bomb) refer' +
            'ences tank_bomb(id)'
          ');')
      end>
    Connection = conConnection
    Params = <>
    Macros = <>
    Left = 32
    Top = 72
  end
  object aplctnvntsExcept: TApplicationEvents
    OnException = aplctnvntsExceptException
    Left = 240
    Top = 16
  end
end
