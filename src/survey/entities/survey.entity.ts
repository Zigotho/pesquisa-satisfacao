import { Prisma } from '@prisma/client';

export class Survey implements Prisma.SurveyUncheckedCreateInput {
  id?: number;
  name: string;
  description: string;
  created_at?: string | Date;
  is_active: boolean;
  survey_questions?: Prisma.Survey_questionUncheckedCreateNestedManyWithoutSurveyInput;
}
