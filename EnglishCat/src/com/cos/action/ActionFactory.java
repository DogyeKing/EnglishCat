package com.cos.action;

public class ActionFactory {
	private static String naming = "ActionFactory : ";

	// �̱��� ��ü ���� - static���� ����
	// static���� ����� JVM ���۽� �ٷ� ���������.
	// static���� ����� class ������ ����
	// ��������� �Ƿ��� heap�� ������ �Ǿ���ϴµ�
	// static�� �پ� ������ ��� ������ �ɼ� ����.
	private static ActionFactory instance = new ActionFactory();

	// �̱��� ��ü������ ���� �ܺο��� ��ü ���� ������ ����
	// �����ڸ� private�� �����Ѵ�.
	private ActionFactory() {
	}

	// static���� ����� instance ������
	// ȣ���ϱ� ���� ������� public �޼ҵ�
	public static ActionFactory getInstance() {
		return instance;
	}
	
	public Action getAction(String cmd) {
		if(cmd.equals("test")) {
			return new TestAction();
		}
		return null;
	}
}




