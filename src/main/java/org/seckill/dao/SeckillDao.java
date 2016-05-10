package org.seckill.dao;

import org.seckill.entity.Seckill;

import java.util.Date;
import java.util.List;

/**
 * Created by ray.liu on 2016/5/10.
 */
public interface SeckillDao {

    /**
     * �����
     * @param seckillId
     * @param killTime
     * @return ���Ӱ������>1,��ʾ���µļ�¼����
     */
    int reduceNumber(long seckillId,Date killTime);

    /**
     * ����id��ѯ����ɱ����
     * @param seckillId
     * @return
     */
    Seckill queryById(long seckillId);

    /**
     * ����ƫ������ѯ��ɱ��Ʒ�б�
     * @param offset
     * @param limit
     * @return
     */
    List<Seckill> queryAll(int offset,int limit);
}
