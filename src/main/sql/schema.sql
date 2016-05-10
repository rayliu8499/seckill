#���ݿ��ʼ���ű�
#�������ݿ�
CREATE DATABASE seckill;
#ʹ�����ݿ�
USE seckill;
#������ɱ����
CREATE TABLE seckill (
  `seckill_id`  BIGINT       NOT NULL AUTO_INCREMENT
  COMMENT '��Ʒ���id',
  `name`        VARCHAR(120) NOT NULL
  COMMENT '��Ʒ����',
  `number`      INT          NOT NULL
  COMMENT '�������',
  `strat_time`  TIMESTAMP    NOT NULL
  COMMENT '��ɱ��ʼʱ��',
  `end_time`    TIMESTAMP    NOT NULL
  COMMENT '��ɱ����ʱ��',
  `create_time` TIMESTAMP    NOT NULL DEFAULT current_timestamp
  COMMENT '����ʱ��',
  PRIMARY KEY (seckill_id),
  KEY idx_start_time(strat_time),
  KEY idx_end_time(end_time),
  KEY idx_create_time(create_time)
)
  ENGINE = innoDB
  AUTO_INCREMENT = 1000
  DEFAULT CHARSET = utf8
  COMMENT = '��ɱ����';

#��ʼ������
INSERT INTO seckill (name, number, strat_time, end_time)
VALUES
  ('1000Ԫ��ɱiPhone6', 100, '2016-5-10 00:00:00', '2016-5-11 00:00:00'),
  ('500Ԫ��ɱiPad2', 200, '2016-5-10 00:00:00', '2016-5-11 00:00:00'),
  ('300Ԫ��ɱС��4', 300, '2016-5-10 00:00:00', '2016-5-11 00:00:00'),
  ('200Ԫ��ɱ����note', 400, '2016-5-10 00:00:00', '2016-5-11 00:00:00');

#��ɱ�ɹ���ϸ��
#�û���¼��֤��ص���Ϣ
CREATE TABLE success_killed (
  `seckill_id`  BIGINT    NOT NULL
  COMMENT '��Ʒ���id',
  `user_phone`  BIGINT    NOT NULL
  COMMENT '�û��ֻ���',
  `state`       TINYINT   NOT NULL DEFAULT -1
  COMMENT '״̬��ʶ:-1:��Ч 0:�ɹ� 1:�Ѹ��� 2:�ѷ���',
  `create_time` TIMESTAMP NOT NULL
  COMMENT '����ʱ��',
  PRIMARY KEY (seckill_id, user_phone), /*��������*/
  KEY idx_create_time(create_time)
)
  ENGINE = innoDB
  DEFAULT CHARSET = utf8
  COMMENT = '��ɱ�ɹ���ϸ��';

#�������ݿ����̨
mysql -uroot -p

#Ϊʲô��дDDL
#��¼ÿ�����ߵ�DDL�޸�
#����v1.1
